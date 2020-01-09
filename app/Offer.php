<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    protected $fillable = ['name', 'start_at', 'finish_at', 'factor'];

    public function offer_product()
      {
       return $this->hasOne('App\Offer_Product');
      }

}
