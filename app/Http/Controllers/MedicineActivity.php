<?php

namespace App\Http\Controllers;

use App\Models\Medicine_Activity;
use App\Models\Docter;
use App\Models\Account;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class MedicineActivity extends Controller
{


    public function index(Request $request)
    {
   
        if ($request->input('starting_date')) {
            $starting_date = $request->input('starting_date');
            $ending_date = $request->input('ending_date');
        } else {
            $starting_date = date("Y-m-d", strtotime('-1 year'));  // 1 year back from today
            $ending_date = date("Y-m-d");  // Today's date
        }
        
        $lims_brand_all = Medicine_Activity::where('medicine__activities.is_active', 1)
            ->join('docters', 'medicine__activities.doc_id', '=', 'docters.id')
            ->where('docters.id', 12)
            ->whereBetween('medicine__activities._date', [$starting_date, $ending_date])  // Date range filter
            ->select('docters.*', 'medicine__activities.id as m_id', 'medicine__activities._date', 'medicine__activities.activity', 'medicine__activities.amount')
            ->get();
          $lims_docter = Docter::where('is_active', 1)->get();
        
            $lims_account = Account::where('is_active', 1)->get();
        return view('backend.medicine_activity.create', compact('lims_brand_all','lims_docter','lims_account','starting_date', 'ending_date'));
    }

    public function store(Request $request)
    {
        $data = new Medicine_Activity();
        $data->doc_id = $request->doc_id;
        $data->activity = $request->activity;
        $data->amount = $request->amount;
        $data->remark = $request->remark;
        $data->_date = $request->_date;
        $data->account_id = $request->account_id;
        $data->is_active = true;
        $data->save();
        $amountString = $request->amount;
        $amountStringClean = str_replace(',', '', $amountString);
        $data = Account::findOrFail($request->account_id); 
        $data->total_balance -= floatval($amountStringClean);
        $data->save();

//        $this->cacheForget('brand_list');
        return redirect('medicine_activity');
    }

    public function edit($id)
    {
        $lims_brand_data = Medicine_Activity::findOrFail($id);
        return $lims_brand_data;
    }

    public function update(Request $request, $id)
    {

        $lims_brand_data = Medicine_Activity::findOrFail($request->brand_id);
         $lims_brand_data->activity = $request->activity;
        $lims_brand_data->amount = $request->amount;
        $lims_brand_data->remark = $request->remark;
        $lims_brand_data->_date = $request->_date;
        $lims_brand_data->is_active = true;
        $lims_brand_data->save();
//        $this->cacheForget('brand_list');
        return redirect('medicine_activity');
    }


    public function deleteBySelection(Request $request)
    {
        $brand_id = $request['brandIdArray'];
        foreach ($brand_id as $id) {
            $lims_brand_data = Medicine_Activity::findOrFail($id);
            $lims_brand_data->is_active = false;
            $lims_brand_data->save();
        }
//        $this->cacheForget('brand_list');
        return 'Activity deleted successfully!';
    }

    public function destroy($id)
    {
        $lims_brand_data = Medicine_Activity::findOrFail($id);
        $lims_brand_data->is_active = false;
        $lims_brand_data->save();
//        $this->cacheForget('brand_list');
        return redirect('medicine_activity')->with('not_permitted', 'Activity deleted successfully!');
    }

    public function exportBrand(Request $request)
    {
        $lims_brand_data = $request['brandArray'];
        $csvData = array('Brand Title, Image');
        foreach ($lims_brand_data as $brand) {
            if ($brand > 0) {
                $data = Medicine_Activity::where('id', $brand)->first();
                $csvData[] = $data->title . ',' . $data->image;
            }
        }
        $filename = date('Y-m-d') . ".csv";
        $file_path = public_path() . '/downloads/' . $filename;
        $file_url = url('/') . '/downloads/' . $filename;
        $file = fopen($file_path, "w+");
        foreach ($csvData as $exp_data) {
            fputcsv($file, explode(',', $exp_data));
        }
        fclose($file);
        return $file_url;
    }
}
