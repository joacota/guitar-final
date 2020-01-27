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

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');



Route::get('/', 'GhController@index');
Route::get('/gh/{id}', 'GhController@show');

Route::get('/products', 'ProductsController@index');
Route::get('/products/{id}', 'ProductsController@show'); //muestra los datos del producto
Route::get('/cart', 'CartsController@index');
Route::get('/cart/{id}', 'CartsController@store');
Route::get('/cartp/{id}', 'CartsController@updateplus');
Route::get('/cartm/{id}', 'CartsController@updateminus');
Route::get('/cartt/{id}', 'CartsController@updatetrash');

// Route::group(['prefix' => 'admin',  'middleware' => 'auth'], function()
// {
//     Route::get('dashboard', function() {} );
// });
//
// Route::prefix('admin')->group(function () {
// Route::group(['prefix' => 'admin',  'middleware' => 'auth', 'middleware' => 'role'], function(){
// Route::group(['middlewaregroups' => ['auth']], function(){
//   Route::group(['prefix' => 'admin', 'middleware' => 'role'], function(){

Route::group(['prefix' => 'admin',  'middleware' => 'auth'], function(){

  Route::group(['middleware'=>'role'],function(){

    Route::get('/products/add', 'ProductsController@create');
    Route::post('/products', 'ProductsController@store');
    Route::get('/products/{id}/edit', 'ProductsController@edit');
    Route::patch('/products/{id}', 'ProductsController@update');
    Route::delete('/products/{id}', 'ProductsController@destroy');

    Route::get('/control1', function (){return view('admin/control');}); //->middleware('role');; //->middleware('auth');

    Route::get('/categories', 'CategoriesController@index'); //->middleware('role');
    Route::get('/categories/add/{id}', 'CategoriesController@create');
    Route::post('/categories', 'CategoriesController@store');
    Route::get('/categories/{id}/edit', 'CategoriesController@edit');
    Route::patch('/categories/{id}', 'CategoriesController@update');
    Route::delete('/categories/{id}', 'CategoriesController@destroy');

    Route::get('/paymentmethods', 'PaymentmethodsController@index');
    Route::get('/paymentmethods/add', 'PaymentmethodsController@create');
    Route::post('/paymentmethods', 'PaymentmethodsController@store');
    Route::get('/paymentmethods/{id}/edit', 'PaymentmethodsController@edit');
    Route::patch('/paymentmethods/{id}', 'PaymentmethodsController@update');
    Route::delete('/paymentmethods/{id}', 'PaymentmethodsController@destroy');

 });
});



// Route::get('/cart', function (){
//     return 'aca se muestra el carrito';
// });

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






Route::get('/admin/offers', function (){
    return 'aca se muestra el formulario para agregar ofertas';
});

Route::post('/admin/offers', function(){
    return 'aca recibo los datos de la oferta para guardarla en la db';
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
