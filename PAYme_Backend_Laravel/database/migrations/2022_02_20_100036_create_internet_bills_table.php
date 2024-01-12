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
        Schema::create('internet_bills', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->string('organization');
            $table->string('bill_period');
            $table->string('account_no');
            $table->string('contact_number')->nullable();
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
        Schema::dropIfExists('internet_bills');
    }
};
