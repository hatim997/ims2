<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Allocate extends Model
{
    protected $fillable = [
      
     "type", "file", "purches_id", "account_id" ,"amont" ,"comment"
    ];
}
