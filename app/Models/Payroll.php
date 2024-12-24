<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Payroll extends Model
{
    protected $fillable =[
        "reference_no", "employee_id", "account_id", "user_id",
        "amount", "deduction_amount", "deduction_note", "paying_method", "note","date_at"
    ];
    // protected $guarded = [];

    public function employee()
    {
    	return $this->belongsTo('App\Models\Employee');
    }
}
