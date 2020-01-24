<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart_Product extends Model
{
    protected $fillable = ['cart_id', 'product_id',];

    public function product()
        {
          return $this->belongsTo('App\Product');
        }

    public function cart()
        {
          return $this->belongsTo('App\Cart');
        }
}
