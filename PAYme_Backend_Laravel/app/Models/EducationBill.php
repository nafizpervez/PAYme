<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EducationBill extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_ID',
        'organization',
        'bill_period',
        'student_id',
        'amount',
    ];
}
