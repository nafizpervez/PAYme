<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class GasBillResouce extends JsonResource
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
            'type'=>'GasBill',
            'attributes'=>[
                'organization'=>$this->organization,
                'customer_code'=>$this->customer_code,
                'bill_period'=>$this->bill_period,
                'contact_number'=>$this->contact_number,
                'amount'=>$this->amount,
            ],
        ];
    }
}
