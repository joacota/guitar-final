<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;

class GhController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $products = Product::whereNotnull('offer_id')->paginate(4);
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();
      // $categories = Category::with('subcategories')->get();


      return view('customer.products.index', [
        'title'=>'listado de Ofertas',
        'vista'=>"1",
        'products' => $products,
        'categories' => $categories,
        'subcategories' => $subcategories,
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
}
