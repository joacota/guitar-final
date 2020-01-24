<?php

namespace App\Http\Middleware;

use Closure;
// use Illuminate\Foundation\Http\Middleware\CheckUserRole as Middleware;
use Illuminate\Auth\Middleware\CheckUserRole as Middleware;

class CheckUserRole
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
      // dd(auth()->user()->role);
      if (auth()->user()->role!=1){
        return redirect('/');
      }

        return $next($request);
    }

}
