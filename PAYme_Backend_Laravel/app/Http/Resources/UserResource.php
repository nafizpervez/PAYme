<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
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
            'type'=>'User',
            'attributes'=>[
                'name'=>$this->name,
                'email'=>$this->email,
                'mid'=>$this->mid,
                'tid'=>$this->tid,
                'location'=>$this->location,
                'avatar'=>$this->avatar,
                'contact_number'=>$this->contact_number,
            ],
        ];
    }
}
