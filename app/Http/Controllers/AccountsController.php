<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Models\Account;
use App\Models\Payment;
use App\Models\Returns;
use App\Models\ReturnPurchase;
use App\Models\Expense;
use App\Models\Payroll;
use App\Models\Medicine_Activity;
use App\Models\Docter;
use App\Models\MoneyTransfer;
use App\Models\Allocate;
use DB;
use Illuminate\Validation\Rule;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Auth;


class AccountsController extends Controller
{    public function index()
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('account-index')){
            $lims_account_all = Account::where('is_active', true)->get();
            return view('backend.account.index', compact('lims_account_all'));
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }

    public function medical($id)
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('account-index')){
        //     $lims_account_all = Medicine_Activity::where('account_id', $id)
        //     ->join('docters', 'medicine__activities.doc_id', '=', 'docters.id')->get();
        //   // dd( $lims_account_all );
    // Fetching data from Medicine_Activity
$medicineActivities = Medicine_Activity::where('account_id', $id)
->join('docters', 'medicine__activities.doc_id', '=', 'docters.id')
->select(
    'medicine__activities.activity as ID',
    'medicine__activities.account_id as AccountID',
    'medicine__activities.amount as Ammount',
    DB::raw("'MedicalActivity' AS ActivityType"),
    'medicine__activities.created_at'
);

// Fetching data from Allocate with a join on purchases
$allocateActivities = Allocate::where('account_id', $id)
->join('purchases', 'allocates.purches_id', '=', 'purchases.id')
->select(
    'purchases.reference_no as ID',
    'allocates.account_id as AccountID',
    'allocates.amont as Ammount', // Ensure this is correct
    DB::raw("'PurchaseActivity' AS ActivityType"),
    'allocates.created_at'
);

// Combine both queries using union
$lims_account_all = $medicineActivities->union($allocateActivities)->orderBy('created_at')->get();

    







    
    // // Merging the two collections (medicineActivities and allocateActivities)
    // $allActivities = $medicineActivities->merge($allocateActivities);
    
    // Sort the merged collection by date (in case the dates vary between collections)
    // $lims_account_all = $allActivities->sortBy('created_at');

//  dd( $combinedActivities);

            return view('backend.account.medicalacc', compact('lims_account_all'));
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }


    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'account_no' => [
                'max:255',
                    Rule::unique('accounts')->where(function ($query) {
                    return $query->where('is_active', 1);
                }),
            ],
        ]);

        $lims_account_data = Account::where('is_active', true)->first();
        $data = $request->all();
        if($data['initial_balance'])
            $data['total_balance'] = $data['initial_balance'];
        else
            $data['total_balance'] = 0;
        if(!$lims_account_data)
            $data['is_default'] = 1;
        $data['is_active'] = true;
        Account::create($data);
        return redirect('accounts')->with('message', 'Account created successfully');
    }

    public function makeDefault($id)
    {
        $lims_account_data = Account::where('is_default', true)->first();
        $lims_account_data->is_default = false;
        $lims_account_data->save();

        $lims_account_data = Account::find($id);
        $lims_account_data->is_default = true;
        $lims_account_data->save();

        return 'Account set as default successfully';
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'account_no' => [
                'max:255',
                    Rule::unique('accounts')->ignore($request->account_id)->where(function ($query) {
                    return $query->where('is_active', 1);
                }),
            ],
        ]);

        $data = $request->all();
        $lims_account_data = Account::find($data['account_id']);
        if($data['initial_balance'])
            $data['total_balance'] = $data['initial_balance'];
        else
            $data['total_balance'] = 0;
        $lims_account_data->update($data);
        return redirect('accounts')->with('message', 'Account updated successfully');
    }

    public function balanceSheet()
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('balance-sheet')){
            $lims_account_list = Account::where('is_active', true)->get();
            $debit = [];
            $credit = [];
            foreach ($lims_account_list as $account) {
                $payment_recieved = Payment::whereNotNull('sale_id')->where('account_id', $account->id)->sum('amount');
                $payment_sent = Payment::whereNotNull('purchase_id')->where('account_id', $account->id)->sum('amount');
                $returns = DB::table('returns')->where('account_id', $account->id)->sum('grand_total');
                $return_purchase = DB::table('return_purchases')->where('account_id', $account->id)->sum('grand_total');
                $expenses = DB::table('expenses')->where('account_id', $account->id)->sum('amount');
                $payrolls = DB::table('payrolls')->where('account_id', $account->id)->sum('amount');
                $sent_money_via_transfer = MoneyTransfer::where('from_account_id', $account->id)->sum('amount');
                $recieved_money_via_transfer = MoneyTransfer::where('to_account_id', $account->id)->sum('amount');

                $credit[] = $payment_recieved + $return_purchase + $recieved_money_via_transfer + $account->initial_balance;
                $debit[] = $payment_sent + $returns + $expenses + $payrolls + $sent_money_via_transfer;

                /*$credit[] = $payment_recieved + $return_purchase + $account->initial_balance;
                $debit[] = $payment_sent + $returns + $expenses + $payrolls;*/
            }
            return view('backend.account.balance_sheet', compact('lims_account_list', 'debit', 'credit'));
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }

    public function accountStatement(Request $request)
    {
        $data = $request->all();
        //return $data;
        $lims_account_data = Account::find($data['account_id']);
        $credit_list = new Collection;
        $debit_list = new Collection;
        $expense_list = new Collection;
        $return_list = new Collection;
        $purchase_return_list = new Collection;
        $payroll_list = new Collection;
        $recieved_money_transfer_list = new Collection;
        $sent_money_transfer_list = new Collection;
        $allocate = new Collection;
        $medical_activity = new Collection;

        if($data['type'] == '0' || $data['type'] == '2') {
            $credit_list = Payment::whereNotNull('sale_id')
                            ->where('account_id', $data['account_id'])
                            ->whereDate('created_at', '>=' , $data['start_date'])
                            ->whereDate('created_at', '<=' , $data['end_date'])
                            ->select('payment_reference as reference_no', 'sale_id', 'amount', 'created_at')
                            ->get();

            $recieved_money_transfer_list = MoneyTransfer::where('to_account_id', $data['account_id'])
                                            ->whereDate('created_at', '>=' , $data['start_date'])
                                            ->whereDate('created_at', '<=' , $data['end_date'])
                                            ->select('reference_no', 'to_account_id', 'amount', 'created_at')
                                            ->get();
            $purchase_return_list = ReturnPurchase::where('account_id', $data['account_id'])
                                    ->whereDate('created_at', '>=' , $data['start_date'])
                                    ->whereDate('created_at', '<=' , $data['end_date'])
                                    ->select('reference_no', 'grand_total as amount', 'created_at')
                                    ->get();
        }
        if($data['type'] == '0' || $data['type'] == '1') {
            $debit_list = Payment::whereNotNull('purchase_id')
                            ->where('account_id', $data['account_id'])
                            ->whereDate('created_at', '>=' , $data['start_date'])
                            ->whereDate('created_at', '<=' , $data['end_date'])
                            ->select('payment_reference as reference_no', 'purchase_id', 'amount', 'created_at')
                            ->get();
            $expense_list = Expense::where('account_id', $data['account_id'])
                            ->whereDate('created_at', '>=' , $data['start_date'])
                            ->whereDate('created_at', '<=' , $data['end_date'])
                            ->select('reference_no', 'amount', 'created_at')
                            ->get();
            $return_list = Returns::where('account_id', $data['account_id'])
                            ->whereDate('created_at', '>=' , $data['start_date'])
                            ->whereDate('created_at', '<=' , $data['end_date'])
                            ->select('reference_no', 'grand_total as amount', 'created_at')
                            ->get();
            $payroll_list = Payroll::where('account_id', $data['account_id'])
                            ->whereDate('created_at', '>=' , $data['start_date'])
                            ->whereDate('created_at', '<=' , $data['end_date'])
                            ->select('reference_no', 'amount', 'created_at')
                            ->get();
            $sent_money_transfer_list = MoneyTransfer::where('from_account_id', $data['account_id'])
                                        ->whereDate('created_at', '>=' , $data['start_date'])
                                        ->whereDate('created_at', '<=' , $data['end_date'])
                                        ->select('reference_no', 'to_account_id', 'amount', 'created_at')
                                        ->get();
            $allocate = Allocate::where( 'allocates.account_id', $data['account_id'])
                                        ->join('purchases',  'allocates.purches_id' ,'=','purchases.id')
                                        ->whereDate('allocates.created_at', '>=' , $data['start_date'])
                                        ->whereDate('allocates.created_at', '<=' , $data['end_date'])
                                        ->select('purchases.reference_no', 'allocates.type', 'allocates.amont', 'allocates.created_at')
                                        ->get();
            $medical_activity = Medicine_Activity::where( 'medicine__activities.account_id', $data['account_id'])
                                        ->join('docters', 'medicine__activities.doc_id' ,'=','docters.id')
                                        ->whereDate('medicine__activities.created_at', '>=' , $data['start_date'])
                                        ->whereDate('medicine__activities.created_at', '<=' , $data['end_date'])
                                        ->select('docters.name', 'medicine__activities.activity', 'medicine__activities.amount', 'medicine__activities.created_at')
                                        ->get();
            
        }
        $all_transaction_list = new Collection;
        $all_transaction_list = $credit_list->concat($recieved_money_transfer_list)
                                ->concat($debit_list)
                                ->concat($expense_list)
                                ->concat($return_list)
                                ->concat($purchase_return_list)
                                ->concat($payroll_list)
                                ->concat($sent_money_transfer_list)
                                ->concat($allocate)
                                ->concat($medical_activity)
                                ->sortByDesc('created_at');
        $balance = 0;
        return view('backend.account.account_statement', compact('lims_account_data', 'all_transaction_list', 'balance'));
    }

    public function destroy($id)
    {
        if(!env('USER_VERIFIED'))
            return redirect()->back()->with('not_permitted', 'This feature is disable for demo!');
        $lims_account_data = Account::find($id);
        if(!$lims_account_data->is_default){
            $lims_account_data->is_active = false;
            $lims_account_data->save();
            return redirect('accounts')->with('not_permitted', 'Account deleted successfully!');
        }
        else
            return redirect('accounts')->with('not_permitted', 'Please make another account default first!');
    }
}
