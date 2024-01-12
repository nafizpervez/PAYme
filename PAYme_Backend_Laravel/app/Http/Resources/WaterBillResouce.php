<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class WaterBillResouce extends JsonResource
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
            'type'=>'WaterBill',
            'attributes'=>[
                'organization'=>$this->organization,
                'bill_period'=>$this->bill_period,
                'account_no'=>$this->account_no,
                'amount'=>$this->amount,
            ],
        ];
    }
}
