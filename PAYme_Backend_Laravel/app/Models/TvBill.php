<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TvBill extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_ID',
        'organization',
        'bill_period',
        'customer_id',
        'amount',
    ];
}
