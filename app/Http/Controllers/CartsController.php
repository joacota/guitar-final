<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Cart;


class CartsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

      if (Auth::check()) {
    // The user is logged in...
        $user = Auth::user();

        $cart = Cart::where('user_id',$user->id);

      }else{
        if(session('cartId')){
          // dd(session()->get('cartId'));
          $cart = Cart::find(session()->get('cartId'));
        }else{

          return redirect()->back();
        }

      }

        // $cart = Cart::find(1);
      // dd(Cart::find(3));
        $cartProducts= $cart->products;
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
// echo $value1['producto']['id'];
// echo $value->id;
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

// dd($productosCarro);

        return view('customer.cart.index', [
          'title'=>'Carrito con productos',
          'cartProducts' => $productosCarro,
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
    public function update(Request $request, $id)
    {


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
