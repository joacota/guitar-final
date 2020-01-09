<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $fillable = ['name', 'src',];

    public function pruducts()
        {
          return $this->hasMany('App\Product');
        }

}
