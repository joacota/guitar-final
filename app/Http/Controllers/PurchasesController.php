<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Purchase;
use App\User;
use App\Cart;
use App\Paymentmethod;
use App\Category;

class PurchasesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $purchase = Purchase::paginate(8);
      return view ('customer.purchases.index', ['purchases'=>$purchases,]
    );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user=session()->get('user');
        $cart=Cart::find(session('cartId'));
        $paymentmethods=Paymentmethod::all();
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id')->get();

        $totalCart=0;
        foreach ($cart->Products as $value) {
          if(isset($value->offer)){
            $totalCart=$totalCart+($value->price*(1-$value->offer->factor)*$value->pivot->qty);
          }else{
            $totalCart=$totalCart+$value->price*$value->pivot->qty;
          }

        }
        // $totalCart=$cart->products->sum('price' * 'pivot.qty');


        return view('customer.purchases.create', [
          'title'=>'Pago de la compra',
          'paymentmethods' => $paymentmethods,
          'totalCart'=>$totalCart,
          'totalPurchase'=> 0,
          'cart'=>$cart,
          'user'=> $user,
          'categories' => $categories,
          'subcategories' => $subcategories,
          ]);


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validar datos
        $this->validate($request, [
          'paymentmethod'=>'required',
        ]);


        $dato=substr($request['paymentmethod'],0,2);
        $request['paymentmethod']=$dato;

        $user=session()->get('user');
        $cart=Cart::find(session('cartId'));
        $paymentmethods=Paymentmethod::all();
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id')->get();

        $totalCart=0;

        foreach ($cart->Products as $value) {
          if(isset($value->offer)){
            $totalCart=$totalCart+($value->price*(1-$value->offer->factor)*$value->pivot->qty);
          }else{
            $totalCart=$totalCart+$value->price*$value->pivot->qty;
          }

        }
         // dd($totalCart);
         $totalCart=$totalCart/1000;
        // guardar daots en base de datos
        $purchase=Purchase::create([
        'paymentmethod_id'=>$dato,
        'user_id'=>$user->id,
        'cart_id'=>$cart->id,
        'total_price'=> $totalCart,
        ]);
        // soft delete del carrito



        // $cart->products()->delete();
        $cart->delete();
        if ($cart) {
            // return redirect('admin/products')->with('alert','asdasdas');

        } else {

            // $response = $this->notFoundMessage();
            // return response('no se encontro el producto', 200)
            //    ->header('Content-Type', 'text/plain');
        }
        // if(!session('cartId')){
          $cart= new Cart;
          $cart= Cart::create(['user_id' => $user->id]);
          session(['cartId' => $cart->id]);
        // }
        // generar un nuevo carro a la session
// $purchase=Purchase::find()
        //asignarle el usuario
// dd($totalCart, $purchase);
        return view('customer.purchases.show', [
          'title'=>'Compra exitosa',
          'paymentmethods' => $paymentmethods,
          'paymentmethod' => $purchase->paymentmethod_id,
          'totalCart'=>0,
          'totalPurchase'=>$purchase->total_price,
          'cart'=>$cart,
          'user'=> $user,
          'categories' => $categories,
          'subcategories' => $subcategories,
          ]);
        //ver la compra - con mensaje de exito
        //mandar mail de la compra

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $purchase = Purchases::find($id);
      return view ('customer.purchases.index', ['purchase'=>$purchase,]
    );
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
}
