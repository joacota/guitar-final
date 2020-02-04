<?php

namespace App\Http\Controllers\Auth;
use Auth;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\cart;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/'; //'/home'  aunque deberia ir al Previous

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    // public function logout(Request $request) {
    //   Auth::logout();
    //   return redirect('/'); //  return redirect('/login');
    // }


    /**
     * The user has been authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
     public function authenticated(Request $request, $user) //(Request $request, $user)
     {
       // dd($request, $user);
      // Con la variable $user relaciono el carrito con el usuario recien autenticado
   // dd($user->id);
        $cartUser= Cart::where('user_id', $user->id)->latest()->first();
      // dd($cartUser->id);
       // dd($cartUser? 'true' :'false');

        if($cartUser){
          session(['cartId' => $cartUser->id]);
          // dd(session('cartId'));  
        }else {
          $cart=Cart::find(session('cartId'));

          //le tengo que asignar el user id al carro existente

          $cart->user_id= $user->id;
          $cart->save();
        }

      }

}
