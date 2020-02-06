<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Brand;
use App\User;
use App\Category;
use App\Cart;

class BrandsController extends Controller
{

  public function index()
  {
    $user=session()->get('user');

    $cart=Cart::find(session('cartId'));
    $subcategories = Category::all();
    $categories = Category::whereNull('category_id')->get();
    $brands=Brand::all();
    $totalCart=0;
    foreach ($cart->Products as $value) {
      if(isset($value->offer)){
        $totalCart=$totalCart+($value->price*$value->offer->factor);
      }else{
        $totalCart=$totalCart+$value->price;
      }
    }

    return view('admin.brands.index', [
      'title'=>'listado de Categorias',
      'categories' => $categories,
      'subcategories' => $subcategories,
      'user'=>$user,
      'cart'=>$cart,
      'totalCart'=>$totalCart,
      'brands'=> $brands,
    ]);

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
    $subcategories = Category::all();
    $categories = Category::whereNull('category_id')->get();
    $brands=Brand::all();
    $totalCart=0;
    foreach ($cart->Products as $value) {
      if(isset($value->offer)){
        $totalCart=$totalCart+($value->price*$value->offer->factor);
      }else{
        $totalCart=$totalCart+$value->price;
      }
    }

    return view('admin.brands.create', [
      'title'=>'listado de Categorias',
      'categories' => $categories,
      'subcategories' => $subcategories,
      'user'=>$user,
      'cart'=>$cart,
      'totalCart'=>$totalCart,
      'brands'=> $brands,
      'brand' => new Brand,
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

$path ="";
    if($request->file('picture') !== null)
    {
      $path = $request->file('picture')->store('public/imagesProducts');
      }

      $brand=Brand::create([
      'src'=>$path,
      'name'=>$request['name'],
      ]);


    return redirect('admin/brands');

  }

  public function edit($id)
  {
    $brand=Brand::find($id);
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


    return view('admin.brands.edit', [
      'brand'=>$brand,
      'categories' => $categories,
      'subcategories' => $subcategories,
      'user'=>$user,
      'cart'=>$cart,
      'totalCart'=>$totalCart,
    ]);
  }

  public function update(Request $request, $id)
  {
    $this->validate($request, [
      'name'=>'required',

    ]);
  $brand=Brand::find($id);
    if($request->file('picture') !== null)
    {
      $path = $request->file('picture')->store('public/imagesProducts');
      $brand->update([
      'src'=>$path,
      'name'=>$request['name'],
      ]);
    }else{
      $brand->update([

      'name'=>$request['name'],
      ]);
    }

    return redirect('admin/brands');
  }


  public function delete($id)
  {

    $brand=Brand::find($id);
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


    return view('admin.brands.destroy', [
      'brand'=>$brand,
      'categories' => $categories,
      'subcategories' => $subcategories,
      'user'=>$user,
      'cart'=>$cart,
      'totalCart'=>$totalCart,
    ]);
  }



  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {

      $brand=Brand::find($id);

      $brand->delete();


    return redirect('admin/brands');
  }




}
