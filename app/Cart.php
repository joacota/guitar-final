<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cart extends Model
{
  use SoftDeletes;
  protected $dates = ['deleted_at'];
  protected $fillable = ['user_id', 'closed_at',];

// public function cart_product()
//   {
//    return $this->hasMany('App\Cart_Product');
//   }
  public function user()
      {
        return $this->belongsTo('App\User');
    }
public function purchase()
    {
      return $this->belongsTo('App\Purchase');
    }
    public function products()
      {
       return $this->belongsToMany(Product::class)->withPivot('qty');
      }
      public function products1()
        {
         return $this->belongsToMany(Product::class)->groupBy('product_id');
        }

}
