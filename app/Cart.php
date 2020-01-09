<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $fillable = ['user_id', 'closed_at',];
}
// public function cart_product()
//   {
//    return $this->hasOne('App\Cart_Product');
//   }
//   public function user()
//       {
//         return $this->belongsTo('App\User');
//       }
public function purchase()
    {
      return $this->belongsTo('App\Purchase');
    }
