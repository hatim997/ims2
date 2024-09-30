<?php

namespace App\Http\Controllers;

use App\Models\Medicine_Activity;
use App\Models\Docter;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class DocterController extends Controller
{


    public function index()
    {$lims_brand_all = Docter::where('is_active', 1)->get();
        // $lims_brand_all = Docter::all();
        return view('backend.medicine_activity.adddocter', compact('lims_brand_all'));
    }

    public function store(Request $request)
    {
        $data = new Docter();
        $data->name = $request->name;
        $data->speciality = $request->speciality;
        $data->product = $request->product;
        $data->hospital = $request->hospital;
        $data->medical = $request->medical;
        $data->mobile = $request->mobile;
        $data->is_active = true;
        $data->save();

//        $this->cacheForget('brand_list');
        return redirect('docter');
    }

    public function edit($id)
    {
        $lims_brand_data = Docter::findOrFail($id);
        return $lims_brand_data;
    }

    public function update(Request $request, $id)
    {

        $data = Docter::findOrFail($request->brand_id);
         $data->name = $request->name;
        $data->speciality = $request->speciality;
        $data->product = $request->product;
        $data->hospital = $request->hospital;
        $data->medical = $request->medical;
         $data->mobile = $request->mobile;
        $data->save();
//        $this->cacheForget('brand_list');
        return redirect('docter');
    }


    public function deleteBySelection(Request $request)
    {
        $brand_id = $request['brandIdArray'];
        foreach ($brand_id as $id) {
            $lims_brand_data = Docter::findOrFail($id);
            $lims_brand_data->is_active = false;
            $lims_brand_data->save();
        }
//        $this->cacheForget('brand_list');
        return 'Activity deleted successfully!';
    }

    public function destroy($id)
    {   $lims_brand_data = Docter::findOrFail($id);
        $lims_brand_data->is_active = false;
        $lims_brand_data->save();
//        $this->cacheForget('brand_list');
        return redirect('docter')->with('not_permitted', 'Activity deleted successfully!');
    }

   
}
