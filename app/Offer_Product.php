<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer_Product extends Model
{
    protected $fillable = ['offer_id', 'product_id'];

    public function product()
        {
          return $this->belongsTo('App\Product');
        }

    public function offer()
        {
          return $this->belongsTo('App\Offer');
        }
}
