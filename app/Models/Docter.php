<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;

class Docter extends Model
{use HasFactory;
    protected $fillable =[
        "name", "hospital", "medical", "speciality", "product","mobile"
    ];
    
    public function medicineActivities()
{
    return $this->hasMany(MedicineActivity::class, 'doc_id');
}
}