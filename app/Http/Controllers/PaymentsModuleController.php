<?php

namespace App\Http\Controllers;

use App\Models\Medicine_Activity;
use App\Models\PaymentsModule;
use Illuminate\Http\Request;

class PaymentsModuleController extends Controller
{
    public function index()
    {
        $lims_brand_all = PaymentsModule::where('is_active', true)->get();
        return view('backend.payment_module.create', compact('lims_brand_all'));
    }

    public function store(Request $request)
    {
        $data = new PaymentsModule();
        $data->type = $request->type;
        $data->amount = $request->amount;
        $data->mode = $request->mode;
        $data->description = $request->description;
        $data->is_active = true;
        $data->save();

//        $this->cacheForget('brand_list');
        return redirect('payments');
    }

    public function edit($id)
    {
        $lims_brand_data = PaymentsModule::findOrFail($id);
        return $lims_brand_data;
    }

    public function update(Request $request, $id)
    {

        $lims_brand_data = PaymentsModule::findOrFail($request->brand_id);
        $lims_brand_data->type = $request->type;
        $lims_brand_data->amount = $request->amount;
        $lims_brand_data->mode = $request->mode;
        $lims_brand_data->description = $request->description;
        $lims_brand_data->is_active = true;
        $lims_brand_data->save();
//        $this->cacheForget('brand_list');
        return redirect('payments');
    }


    public function deleteBySelection(Request $request)
    {
        $brand_id = $request['brandIdArray'];
        foreach ($brand_id as $id) {
            $lims_brand_data = PaymentsModule::findOrFail($id);
            $lims_brand_data->is_active = false;
            $lims_brand_data->save();
        }
//        $this->cacheForget('brand_list');
        return 'Payment deleted successfully!';
    }

    public function destroy($id)
    {
        $lims_brand_data = PaymentsModule::findOrFail($id);
        $lims_brand_data->is_active = false;
        $lims_brand_data->save();
//        $this->cacheForget('brand_list');
        return redirect('payments')->with('not_permitted', 'Payment deleted successfully!');
    }

    public function exportBrand(Request $request)
    {
        $lims_brand_data = $request['brandArray'];
        $csvData = array('Brand Title, Image');
        foreach ($lims_brand_data as $brand) {
            if ($brand > 0) {
                $data = PaymentsModule::where('id', $brand)->first();
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
