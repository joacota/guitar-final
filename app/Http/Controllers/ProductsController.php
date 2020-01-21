<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
use App\Category;
use App\Productpicture;
use App\Brand;


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
        $categories = Category::whereNull('category_id')->get();
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
        $brands=Brand::all();
        return view('admin.products.create', [
          'product'=>new Product,
          'brands'=>$brands,
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
$path=[];

      $this->validate($request, [
        'name'=>'required',
        'description'=>'required',
        'specifications'=>'required',
        'price'=>'required',
        'stock'=>'required',
        'category_id'=>'required',
        'brand_id'=>'required',
      ]);

// dd($request);
      $dato=substr($request['brand_id'],0,2);
      $request['brand_id']=$dato;


      $product=Product::create($request->all());
      for ($i=1; $i <5 ; $i++)
       {
          if($request->file('picture' . $i) !== null)
          {
            $path[] = $request->file('picture' . $i)->store('public/imagesProducts');


            $picture=Productpicture::create([
              // 'title'=>$request->picture1->
            'src'=>substr($path[$i-1],7),
            'product_id'=>$product->id,
            ]);

          }

      }
    
      //  dd($path,$request->file('picture1'));

      // dd($request->all());

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
        $cat = Category::find($product->category_id);
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
      $product = Product::find($id);
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();
      $cat = Category::find($product->category_id);
    // dd($product->Productpicture);


      return view('admin.products.edit', [
        'product' => $product,
        'cat'=>$cat,
        'categories' => $categories,
        'subcategories' => $subcategories,

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
      $path=[];


            $this->validate($request, [
              'name'=>'required',
              'description'=>'required',
              'specifications'=>'required',
              'price'=>'required',
              'stock'=>'required',
              'category_id'=>'required',
              'brand_id'=>'required',
            ]);

            $product=Product::find($id);
            $product->update($request->all());
            $pictures=$product->productpicture;

            //aca tengo que ver si no eligio una foto
            for ($i=1; $i <5 ; $i++)
            {
                if(($request->file('picture' . $i)) !== null )
                {
                    $path[] = $request->file('picture' . $i)->store('public/imagesProducts');

                    $pictures[$i-1]->update([
                      // 'title'=>$request->picture1->
                    'src'=>substr($path[$i-1],7),
                    // 'product_id'=>$product->id,
                    ]);
                }


              }
              return redirect('/products/' . $product->id);
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
