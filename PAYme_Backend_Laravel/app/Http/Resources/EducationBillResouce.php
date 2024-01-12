<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EducationBillResouce extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>''.$this->id,
            'type'=>'EducationBill',
            'attributes'=>[
                'organization'=>$this->organization,
                'bill_period'=>$this->bill_period,
                'student_id'=>$this->student_id,
                'amount'=>$this->amount,
            ],
        ];
    }
}
