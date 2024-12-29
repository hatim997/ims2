<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Account;
use App\Models\Employee;
use App\Models\Payroll;
use Auth;
use DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Mail\PayrollDetails;
use App\Models\Department;
use Mail;
use App\Models\MailSetting;

class PayrollController extends Controller
{
    use \App\Traits\MailInfo;

    public function DownloadPayroll($id)
    {
        $payroll = Payroll::findOrFail($id);
        // dd($payroll);
        $employee = Employee::where('id', $payroll->employee_id)->first();
        $department = Department::where('id', $employee->department_id)->first();
        // dd($employee);
        return view('backend.payroll.down_payroll', compact('payroll', 'employee', 'department'));
    }

    public function index()
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('payroll')){
            $lims_account_list = Account::where('is_active', true)->get();
            $lims_employee_list = Employee::where('is_active', true)->get();
            $general_setting = DB::table('general_settings')->latest()->first();
            if(Auth::user()->role_id > 2 && $general_setting->staff_access == 'own')
                $lims_payroll_all = Payroll::orderBy('id', 'desc')->where('user_id', Auth::id())->get();
            else
                $lims_payroll_all = Payroll::orderBy('id', 'desc')->get();

            return view('backend.payroll.index', compact('lims_account_list', 'lims_employee_list', 'lims_payroll_all'));
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
        $data = $request->all();
        // dd($data);

        $data['reference_no'] = 'payroll-' . date("Ymd") . '-'. date("his");
        $data['user_id'] = Auth::id();

        $data['date_at'] = date("Y-m-d", strtotime( $data['date_at']));
                    // dd(  $data['date_at'] );


        Payroll::create($data);
        // dd('okok');






        $message = 'Payroll creared succesfully';
        //collecting mail data
        $lims_employee_data = Employee::find($data['employee_id']);
        $mail_data['reference_no'] = $data['reference_no'];
        $mail_data['amount'] = $data['amount'];
        $mail_data['name'] = $lims_employee_data->name;
        $mail_data['email'] = $lims_employee_data->email;
        $mail_data['currency'] = config('currency');
        $mail_setting = MailSetting::latest()->first();
        if($mail_setting) {
            $this->setMailInfo($mail_setting);
            try{
                Mail::to($mail_data['email'])->send(new PayrollDetails($mail_data));
            }
            catch(\Exception $e){
                $message = ' Payroll created successfully. Please setup your <a href="setting/mail_setting">mail setting</a> to send mail.';
            }
        }
        return redirect('payroll')->with('message', $message);
    }

    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        $data = $request->all();
        // dd('date', $data);

        $lims_payroll_data = Payroll::find($data['payroll_id']);
        $data['date_at'] = date("Y-m-d", strtotime( $data['date_at']));

        if ($lims_payroll_data) {
            $lims_payroll_data->date_at = $data['date_at']; // Assign formatted date
            $lims_payroll_data->employee_id = $data['employee_id'];
            $lims_payroll_data->account_id = $data['account_id'];
            $lims_payroll_data->amount = $data['amount'];
            $lims_payroll_data->deduction_amount = $data['deduction_amount'];
            $lims_payroll_data->deduction_note = $data['deduction_note'];
            $lims_payroll_data->paying_method = $data['paying_method'];

            $lims_payroll_data->month = $data['month'];
            $lims_payroll_data->year = $data['year'];
            $lims_payroll_data->no_of_days = $data['no_of_days'];
            $lims_payroll_data->allowance = $data['allowance'];
            $lims_payroll_data->leave = $data['leave'];
            $lims_payroll_data->note = $data['note'];
            $lims_payroll_data->save();

            $mesaag= "Payroll updated succesfully.";
        } else {
            $mesaag= "Record not found.";
        }
        return redirect('payroll')->with('message',  $mesaag);
    }




    public function deleteBySelection(Request $request)
    {
        $payroll_id = $request['payrollIdArray'];
        foreach ($payroll_id as $id) {
            $lims_payroll_data = Payroll::find($id);
            $lims_payroll_data->delete();
        }
        return 'Payroll deleted successfully!';
    }

    public function destroy($id)
    {
        $lims_payroll_data = Payroll::find($id);
        $lims_payroll_data->delete();
        return redirect('payroll')->with('not_permitted', 'Payroll deleted succesfully');
    }
}
