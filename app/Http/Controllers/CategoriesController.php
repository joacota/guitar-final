<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\User;
use App\Cart;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

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

            return view('admin.categories.index', [
              'title'=>'listado de Categorias',
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

            return view('admin.categories.create', [
              'title'=>'carga de Categorias',
              'category'=>new Category,
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
              'category_id'=>'required',
            ]);


            $dato=substr($request['category_id'],0,2);
            $request['category_id']=$dato;


            $category=Category::create($request->all());

            return redirect('admin/categories/');
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

    public function catcreate()
    {
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

        return view('admin.categories.catcreate', [
          'title'=>'carga de Categoria de nivel 1',
          'category'=>new Category,
          'categories' => $categories,
          'subcategories' => $subcategories,
          'user'=>$user,
          'cart'=>$cart,
          'totalCart'=>$totalCart,
        ]);
    }

    public function catstore(Request $request)
    {
            $this->validate($request, [
              'name'=>'required',

            ]);


            $dato=substr($request['category_id'],0,2);
            $request['category_id']=$dato;


            $category=Category::create(['name' => $request['name']]);

            return redirect('admin/categories/');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $category=Category::find($id);
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


      return view('admin.categories.edit', [
        'category'=>$category,
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
        'category_id'=>'required',
      ]);


      $dato=substr($request['category_id'],0,2);
      $request['category_id']=$dato;


      $category=Category::find($id);
      $category->update($request->all());

      return redirect('admin/categories/');
    }


    public function delete($id)
    {

      $category=Category::find($id);
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


      return view('admin.categories.destroy', [
        'category'=>$category,
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
      $category=Category::find($id)->delete();
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


      return view('admin.categories.index', [
        'category'=>$category,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'user'=>$user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
      ]);
    }
}
