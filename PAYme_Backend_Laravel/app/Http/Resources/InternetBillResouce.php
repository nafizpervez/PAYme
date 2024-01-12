<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class InternetBillResouce extends JsonResource
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
            'type'=>'InternetBill',
            'attributes'=>[
                'organization'=>$this->organization,
                'bill_period'=>$this->bill_period,
                'account_no'=>$this->account_no,
                'contact_number'=>$this->contact_number,
                'amount'=>$this->amount,
            ],
        ];
    }
}
