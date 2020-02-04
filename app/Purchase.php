<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
  protected $fillable = ['user_id', 'total_price', 'paymentmethod_id', 'cart_id', ];


  public function user()
      {
        return $this->belongsTo('App\User');
      }

  public function cart()
          {
            return $this->bolongsTo('App\Cart');
          }

  public function paymentmethod()
              {
                return $this->bolongsTo('App\Paymentmethod');
              }
}
