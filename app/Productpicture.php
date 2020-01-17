<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Productpicture extends Model
{
  protected $fillable = [
 'title',
 'src', //the path you uploaded the image
 ];



 public function product()
     {
       return $this->belongsTo('App\Product','product_id');
     }
}
