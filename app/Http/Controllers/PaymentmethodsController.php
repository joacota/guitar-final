<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Paymentmethod;
use App\Category;
use App\User;
use App\Cart;

class PaymentmethodsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

      $paymentmethods = Paymentmethod::all();
      $user=session()->get('user');
      $cart=Cart::find(session('cartId'));
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }

      }


      return view('admin.paymentmethods.index', [
        'title'=>'listado de Metodos de pago',
        'paymentmethods' => $paymentmethods,
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
      $paymentmethods = Paymentmethod::all();
      $user=session()->get('user');

      $cart=Cart::find(session('cartId'));
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }

      }
      return view('admin.paymentmethods.create', [
        'title'=>'carga de formas de Pago',
        'paymentmethod'=>new Paymentmethod,
        'paymentmethods'=>$paymentmethods,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'user'=>$user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
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
      $this->validate($request, [
        'name'=>'required',
      ]);

        $paymentmethod=Paymentmethod::create($request->all());
        return redirect('admin/paymentmethods');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $paymentmethod=Paymentmethod::find($id);
        return view('admin.paymentmethods.create', [
          'title'=>'carga de formas de Pago',
          'paymentmethod'=>new Paymentmethod,
          'paymentmethods'=>$paymentmethods,
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
      $paymentmethod=Paymentmethod::find($id);

      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();

      $user=session()->get('user');

      $cart=Cart::find(session('cartId'));

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }

      }
      return view('admin.paymentmethods.edit', [
        'title'=>'Edicion de formas de Pago',
        'paymentmethod'=>$paymentmethod,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'user'=>$user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
      ]);
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
      $this->validate($request, [
        'name'=>'required',
      ]);

      $paymentmethod=Paymentmethod::find($id);
      $paymentmethod->update($request->all());

      return redirect('admin/paymentmethods/');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $paymentmethod=Paymentmethod::find($id)->delete();
      $paymentmethods = Paymentmethod::all();
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();

      $user=session()->get('user');

      $cart=Cart::find(session('cartId'));

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }

      }
      return view('admin.paymentmethods.index', [
        'title'=>'Edicion de formas de Pago',
        'paymentmethods'=>$paymentmethods,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'user'=>$user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
      ]);
    }

    public function delete($id)
    {
      $paymentmethod=Paymentmethod::find($id);
      //
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();

      $user=session()->get('user');

      $cart=Cart::find(session('cartId'));

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }

      }
      return view('admin.paymentmethods.destroy', [
        'title'=>'Edicion de formas de Pago',
        'paymentmethod'=>$paymentmethod,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'user'=>$user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
      ]);
    }
}
