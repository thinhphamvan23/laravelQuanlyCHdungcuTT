<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
class DoanhThu extends Model
{
    use HasFactory;

    protected $fillable = [
      
        'tongdoanhthu',

    ];

    public static function tinhTongTienTheoThang()
    {
       
        $month = Carbon::now()->month;
        $year = Carbon::now()->year;

    
        return DoanhThu::whereMonth('created_at', $month)
                    ->whereYear('created_at', $year)
                    ->sum('tongdoanhthu');
    }

    public static function tinhTongTienTheoNam()
    {
        
        $year = Carbon::now()->year;
        return DoanhThu::whereYear('created_at', $year)
                      ->sum('tongdoanhthu');
    }
}
