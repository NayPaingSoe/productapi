<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
       // return parent::toArray($request);
       return [
           'name'=>$this->name,
           'description'=>$this->detail,
           'stock'=>$this->stock==0 ? 'Out of stock' : $this->stock,
           'price'=>$this->price,
           'discount'=>$this->discount,
           'total_price'=> round(( 1 - $this->discount/100)*$this->price,2),
           'rating'=>$this->reviews->count()>0 ? $this->reviews->sum('star')/$this->reviews->count():'No rating yet',
           'href'=>[
               'reviews'=>route('reviews.index',$this->id)
           ]
       ];
    }
}
