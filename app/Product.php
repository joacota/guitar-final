<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'description', 'specifications', 'price', 'stock', 'category_id']; //faltaria 'image'

    public function brand()
       {
           return $this->belongsTo('App\Brand');
       }

    public function category()
        {
          return $this->belongsTo('App\Category');
        }

    public function productphotos()
            {
              return $this->hasMany('App\Product_Photo');
            }

    public function recommended()
         {
            return $this->hasOne('App\Recommended');
         }

    public function offer_product()
          {
             return $this->belogsToMany('App\Offer_Product');
          }

    public function cart_product()
          {
             return $this->belogsToMany('App\Cart_Product');
          }

}
