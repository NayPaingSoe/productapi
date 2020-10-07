<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name'=>$this->name,
            'description'=>$this->detail,
            'stock'=>$this->stock==0 ? 'Out of stock' : $this->stock,
            'price'=>$this->price,
            'discount'=>$this->discount,
            'total_price'=>round((1-($this->discount/100)) * $this->price,0),
            'href'=>[
                'reviews'=>route('products.show',$this->id)
            ]
            ];
    }
}
