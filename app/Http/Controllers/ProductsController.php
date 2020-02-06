<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Product;
use App\Category;
use App\Productpicture;
use App\Brand;
use App\User;
use App\Cart;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    $user=session()->get('user');


      if(!session('cartId')){
        $cart= Cart::create([]);
        session(['cartId' => $cart->id]);
      }
      $cart=Cart::find(session('cartId'));

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }
      }
        $products = Product::orderBy('category_id')->paginate(20);
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id')->get();
        // $categories = Category::with('subcategories')->get();


        return view('admin.products.index', [
          'title'=>'listado de Productos',
          'products' => $products,
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
      $cart= new Cart;
      // ssi existe tengo que tomar el activo que viene de la session con el id.

      if(!session('cartId')){
        $cart= Cart::create([]);
        session(['cartId' => $cart->id]);
      }

      $cart=Cart::find(session('cartId'));

      $totalCart=0;
      foreach ($cart->Products as $value) {
        if(isset($value->offer)){
          $totalCart=$totalCart+($value->price*$value->offer->factor);
        }else{
          $totalCart=$totalCart+$value->price;
        }
      }
        $subcategories = Category::all();
        $categories = Category::whereNull('category_id')->get();
        $brands=Brand::all();
        $product=new Product;
        $photo=$product->productpicture;

        return view('admin.products.create', [
          'product'=>$product,
          'photo' =>$photo,
          'brands'=>$brands,
          'categories' => $categories,
          'subcategories' => $subcategories,
          'user' => $user,
          'cart'=>$cart,
          'totalCart'=>$totalCart,

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


      $dato=substr($request['brand_id'],0,2);
      $request['brand_id']=$dato;


      $product=Product::create($request->all());
      for ($i=1; $i <5 ; $i++)
       {
          if($request->file('picture' . $i) !== null)
          {
            $path[] = $request->file('picture' . $i)->store('public/imagesProducts');


            $picture=Productpicture::create([

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

       $user=session()->get('user');
       $cart= new Cart;
       // ssi existe tengo que tomar el activo que viene de la session con el id.

       if(!session('cartId')){
         $cart= Cart::create([]);
         session(['cartId' => $cart->id]);
       }
       $cart=Cart::find(session('cartId'));

       $totalCart=0;
       foreach ($cart->Products as $value) {
         if(isset($value->offer)){
           $totalCart=$totalCart+($value->price*$value->offer->factor);
         }else{
           $totalCart=$totalCart+$value->price;
         }
       }
        return view('customer.products.show', [
          'title'=>'Detalle de producto',
          'product' => $product,
          'cat'=>$cat,
          'categories' => $categories,
          'subcategories' => $subcategories,
          'user' => $user,
          'cart'=>$cart,
          'totalCart'=>$totalCart,
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

      $brands=Brand::all();
      $product = Product::find($id);
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();
      $cat = Category::find($product->category_id);
      $photo=$product->productpicture;

    $user=session()->get('user');
    $cart= new Cart;
    // ssi existe tengo que tomar el activo que viene de la session con el id.

    if(!session('cartId')){
      $cart= Cart::create([]);
      session(['cartId' => $cart->id]);
    }
    $cart=Cart::find(session('cartId'));

    $totalCart=0;
    foreach ($cart->Products as $value) {
      if(isset($value->offer)){
        $totalCart=$totalCart+($value->price*$value->offer->factor);
      }else{
        $totalCart=$totalCart+$value->price;
      }
    }

      return view('admin.products.edit', [
        'product' => $product,
        'cat'=>$cat,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'brands'=>$brands,
        'user' => $user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
        'photo' => $photo,
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
    // dd($request['picture']);
            $this->validate($request, [
              'name'=>'required',
              'description'=>'required',
              'specifications'=>'required',
              'price'=>'required',
              'stock'=>'required',
              'category_id'=>'required',
              'brand_id'=>'required',
              'picture' => 'max:4'
            ]);

            $dato=substr($request['brand_id'],0,2);
            $request['brand_id']=$dato;

            $product=Product::find($id);
            $product->update($request->all());
            $pictures=$product->productpicture;

            if(null!==($request->file('picture'))){
              foreach ($request->file('picture') as $key => $photo) {
                $product->productpicture()->updateOrCreate(['id' => $key], [
                  'src' => $photo->store('public/imagesProducts')
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

    public function delete($id)
    {

      $brands=Brand::all();
      $product = Product::find($id);
      $subcategories = Category::all();
      $categories = Category::whereNull('category_id')->get();
      $cat = Category::find($product->category_id);
      $photo=$product->productpicture;

    $user=session()->get('user');
    $cart= new Cart;


    if(!session('cartId')){
      $cart= Cart::create([]);
      session(['cartId' => $cart->id]);
    }
    $cart=Cart::find(session('cartId'));

    $totalCart=0;
    foreach ($cart->Products as $value) {
      if(isset($value->offer)){
        $totalCart=$totalCart+($value->price*$value->offer->factor);
      }else{
        $totalCart=$totalCart+$value->price;
      }
    }

      return view('admin.products.delete', [
        'product' => $product,
        'cat'=>$cat,
        'categories' => $categories,
        'subcategories' => $subcategories,
        'brands'=>$brands,
        'user' => $user,
        'cart'=>$cart,
        'totalCart'=>$totalCart,
        'photo' => $photo,
      ]);

    }



    public function softtDelete($id)
       {

           $product = Product::find($id)->delete();
           if ($product) {

               // $response = $this->successfulMessage(200, 'Successfully deleted', true, 0, $product);
               // return response('producto borrado', 200)
               //    ->header('Content-Type', 'text/plain');
                  return redirect('admin/products')->with('alert','asdasdas');
           } else {

               // $response = $this->notFoundMessage();
               return response('no se encontro el producto', 200)
                  ->header('Content-Type', 'text/plain');
           }


       }




    // public function indexProd()
    // {
    //   $user="perfil";
    //   if (Auth::check()) {
    // // The user is logged in...
    //   $user = Auth::user();
    //   }    else{
    //         $user= new User;
    //       }
    //
    //     $products = Product::all(); //paginate(8);
    //     $subcategories = Category::all();
    //     $categories = Category::whereNull('category_id')->get();
    //     // $categories = Category::with('subcategories')->get();
    //
    //
    //     return view('admin.products.index', [
    //       'title'=>'listado de Productos',
    //       'products' => $products,
    //       'categories' => $categories,
    //       'subcategories' => $subcategories,
    //       'user'=>$user,
    //     ]);
    // }

}
