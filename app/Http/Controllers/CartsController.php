<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Cart;
use App\Category;

class CartsController extends Controller
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
        $user = Auth::user();

        //$cart = Cart::where('user_id',$user->id);
        $cart = Cart::find(session()->get('cartId'));

      }else{
        if(session('cartId')){
          // dd(session()->get('cartId'));
          $cart = Cart::find(session()->get('cartId'));
        }else{

          return redirect()->back();
        }

      }


              $cartProducts= $cart->products()->orderBy('product_id')->get();
              // $cartProducts=Cart_Product::where('cart_id',$cart->id)->groupBy('product_id')->get();

              $productosCarro=[];
              $t=0;
              foreach ($cartProducts as $key => $value) {
              $cuenta=1;
                foreach ($productosCarro as $key1 => $value1) {
                  if($value1['producto']['id']==$value->id){
                      $cuenta++;
                      $t=$key1;
                  }

                }
                if($cuenta>1){
                  $productosCarro[$t]['cantidad']++;

                }else {
                  $productosCarro[]=[
                    'producto'=>$value,
                    'cantidad'=>1,
                  ];

                }

              }

              $totalCart=$cartProducts->sum('price');
              $subcategories = Category::all();
              $categories = Category::whereNull('category_id')->get();

              return view('customer.cart.index', [
                'title'=>'Carrito con productos',
                'cartProducts' => $productosCarro,
                'totalCart'=>$totalCart,
                'categories' => $categories,
                'subcategories' => $subcategories,
                'user'=>$user,
                'cart'=>$cart,
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
    public function store(Request $request, $id)
    {

        $cart=Cart::find(session('cartId'));

        $cart->products()->attach($id);
      //si esta logueado meto tambien el user id al Carrito si no lo tiene

       return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
    public function updateplus(Request $request, $id)
    {

      $cart=Cart::find(session('cartId'));

      $cart->products()->attach($id);
      //si esta logueado meto tambien el user id al Carrito si no lo tiene

      return redirect('/cart');
    }

    public function updateminus(Request $request, $id)
    {

      $n=0;
      $cart=Cart::find(session('cartId'));
      foreach ($cart->products as $key => $value) {
        if($value->id==$id){
          $n=$n+1;
        }
      }

      $cart->products()->detach($id);

      for ($i=1; $i <$n ; $i++) {
        $cart->products()->attach($id);
      }

      //si esta logueado meto tambien el user id al Carrito si no lo tiene

      return redirect('/cart');
    }

    public function updatetrash(Request $request, $id)
    {

      $cart=Cart::find(session('cartId'));

      $cart->products()->detach($id);

      return redirect('/cart');
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
}
