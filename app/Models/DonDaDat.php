<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DonDaDat extends Model
{
    use HasFactory;
    protected $fillable = [
             'ten_nguoi_nhan',
            'sdt',
            'dia_chi_nhan',
            'ghi_chu',
            'tong_tien',
    ];
   
   
}
