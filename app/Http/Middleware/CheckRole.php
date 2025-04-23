<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckRole
{
    public function handle(Request $request, Closure $next, $roles)
    {
        $rolesArray = array_map('trim', explode(',', $roles));

        if (Auth::check()) {
            $userRole = strtolower(Auth::user()->role);
            $rolesArray = array_map('strtolower', $rolesArray);
    
            if (in_array($userRole, $rolesArray)) {
                return $next($request);
            }
        }

        return abort(403, 'Unauthorized action.');
    }
}