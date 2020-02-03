<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Cart;
use App\Category;
use App\User;

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

            $user= new User;

          $cart = Cart::find(session()->get('cartId'));
        }else{

          return redirect()->back();
        }

      }


              $cartProducts= $cart->products()->orderBy('product_id')->get();
              // $cartProducts=Cart_Product::where('cart_id',$cart->id)->groupBy('product_id')->get();

              // $productosCarro=[];
              // $t=0;
              // foreach ($cartProducts as $key => $value) {
              // $cuenta=1;
              //   foreach ($productosCarro as $key1 => $value1) {
              //     if($value1['producto']['id']==$value->id){
              //         $cuenta++;
              //         $t=$key1;
              //     }
              //
              //   }
              //   if($cuenta>1){
              //     $productosCarro[$t]['cantidad']++;
              //
              //   }else {
              //     $productosCarro[]=[
              //       'producto'=>$value,
              //       'cantidad'=>1,
              //     ];
              //
              //   }
              //
              // }


              // $totalCart=$cartProducts->sum('price');
              $totalCart=0;

              foreach ($cart->Products as $value) {
                if(isset($value->offer)){
                  $totalCart=$totalCart+($value->price*(1-$value->offer->factor)*$value->pivot->qty);
                }else{
                  $totalCart=$totalCart+$value->price*$value->pivot->qty;
                }

              }

              $subcategories = Category::all();
              $categories = Category::whereNull('category_id')->get();

              return view('customer.cart.index', [
                'title'=>'Carrito con productos',
                'cartProducts' => $cartProducts,
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

      $item = $cart->products()->find($id);

      $item->pivot->qty++;

      $item->pivot->save();

      return redirect('/cart');
    }

    public function updateminus(Request $request, $id)
    {
      $cart=Cart::find(session('cartId'));

      $item = $cart->products()->find($id);

      $item->pivot->qty--;

      $item->pivot->save();

      return redirect('/cart');
    }

    public function updatetrash(Request $request, $id)
    {
      $cart=Cart::find(session('cartId'));

      $cart->products()->detach($id);

      return redirect('/cart');
    }
}
