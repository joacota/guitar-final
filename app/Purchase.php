<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
  protected $fillable = ['user_id', 'totalPrice', 'payment_method', 'cart_id', ];


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
                return $this->bolongsTo('App\PaymentMethod');
              }
}
