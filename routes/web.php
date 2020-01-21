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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/products', 'ProductsController@index' {
//     return view ();
// });


Route::get('/', 'GhController@index');
Route::get('/gh/{id}', 'GhController@show');

Route::get('/products', 'ProductsController@index');
Route::get('/products/{id}', 'ProductsController@show'); //muestra los datos del producto



Route::get('/admin/products/add', 'ProductsController@create'); //creara el producto
Route::post('/admin/products', 'ProductsController@store'); // almacena el nuevo producto
Route::get('/admin/products/{id}/edit', 'ProductsController@edit'); //toma los datos del producto para mostrarlo
Route::patch('/admin/products/{id}', 'ProductsController@update'); //los actualiza
Route::delete('/admin/products/{id}', 'ProductsController@destroy'); //borra los datos

Route::get('admin/control1', function (){
    return view('admin/control');
});
Route::get('/admin/categories', 'CategoriesController@index');
Route::get('/admin/categories/add/{id}', 'CategoriesController@create'); //creara el producto
Route::post('/admin/categories', 'CategoriesController@store'); // almacena el nuevo producto
Route::get('/admin/categories/{id}/edit', 'CategoriesController@edit'); //toma los datos del producto para mostrarlo
Route::patch('/admin/categories/{id}', 'CategoriesController@update'); //los actualiza
Route::delete('/admin/categories/{id}', 'CategoriesController@destroy'); //borra los datos

Route::get('/admin/paymentmethods', 'PaymentmethodsController@index');
Route::get('/admin/paymentmethods/add', 'PaymentmethodsController@create'); //creara el producto
Route::post('/admin/paymentmethods', 'PaymentmethodsController@store'); // almacena el nuevo producto
Route::get('/admin/paymentmethods/{id}/edit', 'PaymentmethodsController@edit'); //toma los datos del producto para mostrarlo
Route::patch('/admin/paymentmethods/{id}', 'PaymentmethodsController@update'); //los actualiza
Route::delete('/admin/paymentmethods/{id}', 'PaymentmethodsController@destroy'); //borra los datos

Route::get('/cart', function (){
    return 'aca se muestra el carrito';
});

Route::post('/cart', function (){
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

// Route::get('/admin/products/add', function(){
//     return 'aca se muestra el campo para agregar productos ';
// });
// Route::post('admin/products/add', function(){
//     return 'aca recibo los dats del producto agregado para guardarlos en la db';
// });




Route::get('/admin/offers', function (){
    return 'aca se muestra el formulario para agregar ofertas';
});

Route::post('/admin/offers', function(){
    return 'aca recibo los datos de la oferta para guardarla en la db';
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
