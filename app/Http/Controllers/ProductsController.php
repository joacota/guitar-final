<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
use App\Category;
use App\Productpicture;


class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all(); //paginate(8);
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id');
        // $categories = Category::with('subcategories')->get();


        return view('customer.products.index', [
          'title'=>'listado de Productos',
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
        return view('admin.products.create', [
          'product'=>new Product,
        ]

      );

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
        'description'=>'required',
        'specification'=>'required',
        'price'=>'required',
        'stock'=>'required',
        'category_id'=>'required',
        'brand_id'=>'required',
      ]);

      // dd($request->all());

        $product=Product::create($request->all());
        return redirect('/products/' . $product->id);
    }

    /**admin
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id')->get();
        $cat = Category::find($id);
 // dd($product->Productpicture);


        return view('customer.products.show', [
          'product' => $product,
          'cat'=>$cat,
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
