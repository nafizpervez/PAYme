<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InternetBill extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_ID',
        'organization',
        'bill_period',
        'account_no',
        'contact_number',
        'amount',
    ];
}
