<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/products', 'ProductsController@index' {
//     return view ();
// });
Route::get('/products', 'ProductsController@index');


Route::get('/cart', function (){
    return 'aca se muestra el carrito';
});

Route::post('cart', function (){
    return 'recibo el productoque voy a agregar al carrito';
});

Route::get('/faq', function (){
    return 'aca se muestran las preguntas frecuentes';
});

Route::get('/contact', function (){
    return 'aca se muestra el formulario de contacto';
});

Route::post('/contact', function (){
    return 'aca recibo los datos del formulario para guardarlos en la db';
});

Route::get('/mis-compras', function(){
    return 'aca se muestra el historial de compra';
});

Route::get('/compra/envio',function(){
    return 'aca se muestra el formulario para agregar la direccion de envio';
});

Route::post('/compra/envio', function(){
    return 'aca recibo los datos de envio para guardar en la db';
});

Route::get('/compra/pago', function(){
    return 'aca se muestra el formulario para elegir el metodo de pago';
});

Route::post('/compra/pago', function(){
    return 'aca recibo los datos de pago para guardar en la db';
});

Route::get('/compra/preview',function(){
    return 'aca se muestra la compra para revisar si esta todo ok';
});

Route::post('/compra/confirmar', function(){
    return 'todo ok!';
});

Route::get('/perfil', function(){
    return 'aca se muestra el perfil del usuario';
});

Route::post('/perfil', function(){
    return 'aca recibo los datos nuevos del usuario para guardar en la db';
});




//rutas propias del administrador

Route::get('/admin/products/add', function(){
    return 'aca se muestra el campo para agregar productos ';
});
Route::post('admin/products/add', function(){
    return 'aca recibo los dats del producto agregado para guardarlos en la db';
});

Route::get('/admin/categories/add', function(){
    return 'aca se muestra el campo para agregar categorias ';
});
Route::post('admin/categories/add', function(){
    return 'aca recibo los dats de la categoria agregado para guardarlos en la db';
});


Route::get('/admin/offers', function (){
    return 'aca se muestra el formulario para agregar ofertas';
});

Route::post('/admin/offers', function(){
    return 'aca recibo los datos de la oferta para guardarla en la db';
});
