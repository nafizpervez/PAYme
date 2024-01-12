<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('electricity_bills', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->string('organization');
            $table->integer('account_no');
            $table->string('bill_period')->nullable();
            $table->string('contact_number');
            $table->double('amount');
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
        Schema::dropIfExists('electricity_bills');
    }
};
