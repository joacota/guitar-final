<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'description', 'specifications', 'price', 'stock', 'category_id', 'brand_id']; //faltaria 'image'

    public function brand()
       {
           return $this->belongsTo('App\Brand');
       }

    public function category()
        {
          return $this->belongsTo('App\Category');
        }

    public function productpicture()
            {
              return $this->hasMany('App\Productpicture','product_id');
            }

    public function recommended()
         {
            return $this->hasOne('App\Recommended');
         }

    public function offer()
          {
             return $this->belongsTo('App\Offer','offer_id');
          }

    public function cart_product()
          {
             return $this->belogsToMany('App\Cart_Product');
          }

}
