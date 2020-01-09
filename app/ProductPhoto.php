<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_Photo extends Model
{
  protected $fillable = [
 'title',
 'src', //the path you uploaded the image
 'mime_type'
 ];



 public function product()
     {
       return $this->belongsTo('App\Product');
     }
}
