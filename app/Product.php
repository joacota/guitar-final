<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Product extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
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

    public function cart()
          {
             return $this->belogsToMany('App\Cart');
          }

}
