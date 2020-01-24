<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Brand;
use Faker\Generator as Faker;

$factory->define(Brand::class, function (Faker $faker) {
    return [
        'name'=>$faker->text(20),
        'src'=>'App/public/photosBrands/images.png',
    ];
});
