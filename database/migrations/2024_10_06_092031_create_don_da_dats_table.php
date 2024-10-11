<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDonDaDatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('don_da_dats', function (Blueprint $table) {
                    
            $table->string('ten_nguoi_nhan')->nullable();
            $table->string('sdt');
            $table->string('dia_chi_nhan');
            $table->string('ghi_chu')->nullable();
            $table->string('tong_tien')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('don_da_dats');
    }
}
