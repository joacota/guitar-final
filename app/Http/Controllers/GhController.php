<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Product;
use App\Category;
use App\Cart;

class GhController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $user="perfil";
      if (Auth::check()) {
    // The user is logged in...
      $user = Auth::user()->name;
      }
      // if(Cart::exists){
      //si no existe cart tengo que crea

      $cart= new Cart;
      // ssi existe tengo que tomar el activo que viene de la session con el id.

      if(!session('cartId')){
        $cart= Cart::create([]);
        session(['cartId' => $cart->id]);
      }
// dd(session('cartId'));
      $cart=Cart::find(session('cartId'));
      //crear un nuevo carro si no existe.
      $totalCart=0;

      $products = Product::whereNotnull('offer_id')->paginate(8);
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();
       $categories = Category::with('subcategories')->get();
       foreach ($cart->Products as $value) {
         $totalCart=$totalCart+$value->price;
       }

// Get the currently authenticated user...


      return view('customer.products.index', [
        'title'=>'listado de Ofertas',
        'vista'=>"1",
        'products' => $products,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'user'=>$user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
      ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $user="perfil";
      if (Auth::check()) {
    // The user is logged in...
      $user = Auth::user()->name;
      }

      if(!session('cartId')){
        $cart= Cart::create([]);
        session(['cartId' => $cart->id]);
      }
// dd(session('cartId'));
      $cart=Cart::find(session('cartId'));
      //crear un nuevo carro si no existe.
      $totalCart=0;
      foreach ($cart->Products as $value) {
        $totalCart=$totalCart+$value->price;
      }

      $products = Product::where('category_id', "=", $id)->paginate(16);
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();
      $cat = Category::find($id);


      return view('customer.products.products', [
        'title'=>'listado de Productos',
        'vista'=>"0",
        'cat'=>$cat,
        'products' => $products,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
        'user'=>$user,
      ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function control(){

    }



}
