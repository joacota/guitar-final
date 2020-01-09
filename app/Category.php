<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'category_id'];

    public function category()
       {
           return $this->belongsTo('App\Category');
       }

    // public function pruducts()
    //     {
    //       return $this->hasMany('App\Product');
    //     }

    public function subcategories() {
       return $this->hasMany('App\Category','category_id');
   }
}
