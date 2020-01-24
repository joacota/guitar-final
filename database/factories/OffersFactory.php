<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Offer;
use Faker\Generator as Faker;

$factory->define(Offer::class, function (Faker $faker) {


  // $startingDate = $faker->dateTimeThisYear('+1 month');
  //  $endingDate   = strtotime('+1 Week', $startingDate->getTimestamp());
   $factor=$faker->randomFloat($nbMaxDecimals = 1, $min = 0, $max = 0.7);
   $factorName=$factor * 100;
    return [
      'name'=>$factorName . " % de Descuento", //'Nombre Producto1',
      // 'start_at'=>$startingDate, //'Producto 1 muy importante',
      // 'finish_at'=>$endingDate, //'tiene todo lo que tiene que tener',
      'factor'=> $factor,
    ];
});
