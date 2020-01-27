<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Paymentmethod extends Model
{
    protected $fillable = ['name',];

    public function purchase()
            {
              return $this->hasMany('App\purchase');
            }
}
