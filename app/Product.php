<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    protect $fillable=['name', 'description', 'specifications'];
}
