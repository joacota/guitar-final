<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //    $products = Product::all(); //paginate(8);
            $subcategories = Category::all();
            $categories = Category::whereNull('category_id')->get();
            // $categories = Category::with('subcategories')->get();

            return view('admin.categories.index', [
              'title'=>'listado de Categorias',
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
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id')->get();
        // $categories = Category::with('subcategories')->get();

        return view('admin.categories.create', [
          'title'=>'carga de Categorias',
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
