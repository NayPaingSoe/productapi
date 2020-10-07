<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable=['customer','review','star'];
    use HasFactory;
    public function product()
    {
        return $this->belongsTo('App\Models\Product', 'product_id');
    }
}
