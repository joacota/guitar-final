<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name'=>$faker->text(18), //'Nombre Producto1',
        'description'=>$faker->paragraph, //'Producto 1 muy importante',
        'specifications'=>$faker->paragraph, //'tiene todo lo que tiene que tener',
        'price'=>$faker->randomFloat(2,999,999999), //1234.93,
        'stock'=>$faker->numberBetween(0, 100),
        'category_id'=>$faker->numberBetween(1, 3),
        'brand_id'=>$faker->numberBetween(1, 8),
        //'image' => $faker->image('public/storage/images',640,480, null, false),
    ];
});
