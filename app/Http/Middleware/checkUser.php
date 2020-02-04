<?php

namespace App\Http\Middleware;
use Illuminate\Auth\Middleware\CheckUser as Middleware;
use Closure;
use Illuminate\Support\Facades\Auth;
use App\User;

class checkUser
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
      if (Auth::check()) {
    // The user is logged in...
      $user = Auth::user();
      } else{

        $user= new User;

      }
        session(['user' => $user]);
        return $next($request);
    }
}
