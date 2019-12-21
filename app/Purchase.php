<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
  protected $fillable = ['user_id', 'totalPrice', 'payment_method'];
}
