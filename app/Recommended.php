<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recommended extends Model
{
    protected $fillable = ['product_id',];

    public function product()
       {
          return $this->hasOne('App\Product');
       }

}
