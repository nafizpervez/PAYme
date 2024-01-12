<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TvBillResouce extends JsonResource
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
            'type'=>'TvBill',
            'attributes'=>[
                'organization'=>$this->organization,
                'bill_period'=>$this->bill_period,
                'customer_id'=>$this->customer_id,
                'amount'=>$this->amount,
            ],
        ];
    }
}
