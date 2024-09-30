<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Medicine_Activity extends Model
{
    use HasFactory;
     protected $table = 'medicine__activities';
    public function doctor()
{
    return $this->belongsTo(Docter::class);
}
}
