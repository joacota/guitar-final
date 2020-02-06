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



Route::get('/', 'GhController@index')->middleware('checkuser', 'checkcart');
Route::get('/gh/{id}', 'GhController@show')->middleware('checkuser', 'checkcart');


Route::get('/products/{id}', 'ProductsController@show'); 
Route::get('/cart', 'CartsController@index');
Route::get('/cart/{id}', 'CartsController@store');
Route::get('/cartp/{id}', 'CartsController@updateplus');
Route::get('/cartm/{id}', 'CartsController@updateminus');
Route::get('/cartt/{id}', 'CartsController@updatetrash');


Route::get('/purchases', 'purchasesController@create');
Route::post('/purchases', 'purchasesController@store');
Route::get('/purchases/show', 'purchasesController@show')->middleware('checkcart');

Route::group(['prefix' => 'admin',  'middleware' => 'auth'], function(){

  Route::group(['middleware'=>'role', 'checkuser', 'checkcart'],function(){

    Route::get('/products', 'ProductsController@index');
    Route::get('/products/add', 'ProductsController@create');
    Route::post('/products', 'ProductsController@store');
    Route::get('/products/{id}/edit', 'ProductsController@edit');
    Route::patch('/products/{id}', 'ProductsController@update');
    Route::get('/products/{id}/delete', 'ProductsController@delete');
    Route::delete('/products/{id}', 'ProductsController@softtDelete');

    // Route::get('/control1', function (){return view('admin/control');}); //->middleware('role');; //->middleware('auth');
    Route::get('/control1', 'GhController@control')->middleware('checkuser');

    Route::get('/categories', 'CategoriesController@index'); //->middleware('role');
    Route::get('/categories/add/{id}', 'CategoriesController@create');
    Route::post('/categories', 'CategoriesController@store');
    Route::get('/categories/{id}/edit', 'CategoriesController@edit');
    Route::patch('/categories/{id}', 'CategoriesController@update');
    Route::get('/categories/{id}/delete', 'CategoriesController@delete');
    Route::delete('/categories/{id}', 'CategoriesController@destroy');
    Route::get('/categories/add', 'CategoriesController@catcreate');
    Route::post('/categoriesL1', 'CategoriesController@catstore');

    Route::get('/brands', 'BrandsController@index'); //->middleware('role');
    Route::get('/brands/add', 'BrandsController@create');
    Route::post('/brands', 'BrandsController@store');
    Route::get('/brands/{id}/edit', 'BrandsController@edit');
    Route::patch('/brands/{id}', 'BrandsController@update');
    Route::get('/brands/{id}/delete', 'BrandsController@delete');
    Route::delete('/brands/{id}', 'BrandsController@destroy');




    Route::get('/paymentmethods', 'PaymentmethodsController@index');
    Route::get('/paymentmethods/add', 'PaymentmethodsController@create');
    Route::post('/paymentmethods', 'PaymentmethodsController@store');
    Route::get('/paymentmethods/{id}/edit', 'PaymentmethodsController@edit');
    Route::patch('/paymentmethods/{id}', 'PaymentmethodsController@update');
    Route::delete('/paymentmethods/{id}', 'PaymentmethodsController@destroy');
    Route::get('/paymentmethods/{id}/delete', 'PaymentmethodsController@delete');
 });
});



// Route::get('/cart', function (){
//     return 'aca se muestra el carrito';
// });

Route::post('/cart', function (){
    return 'recibo el productoque voy a agregar al carrito';
});

Route::get('/faq', 'FaqController@index');

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
