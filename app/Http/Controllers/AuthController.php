<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:6'
        ]);


        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        return response()->json($user);
    }




public function login(Request $request){
    // dd('res');
    
    
    $request->validate([
        'email' => 'required|email',
        'password' => 'required',
        'role_id' => 'required'
        ]);
    // $request->validate([
    //     'name' => 'required',
    //     'email' => 'required|email',
    //     'password' => 'required|min:6'
    // ]);

        // return response()->json(['Warning' => 'credentials incorrect'],401);
    if( Auth::attempt(['role_id'=>$request->role_id,'email'=>$request->email, 'password'=>$request->password]) ) {
        $user = Auth::user();

        $token = $user->createToken($user->email.'-'.now());

        return response()->json(['token' => $token->accessToken,'id'=>$user]);

    }else{
        return response()->json(['Warning' => 'credentials incorrect'],401);

    }
}


}
