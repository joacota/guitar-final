<?php

namespace App\Http\Middleware;

use Closure;
use App\Cart;

class checkcart
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

      if(!session('cartId')){
        $cart= new Cart;
        $cart= Cart::create([]);
        session(['cartId' => $cart->id]);
      }

        return $next($request);
    }
}
