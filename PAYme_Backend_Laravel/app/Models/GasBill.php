<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GasBill extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_ID',
        'organization',
        'customer_code',
        'bill_period',
        'contact_number',
        'amount',
    ];
}
