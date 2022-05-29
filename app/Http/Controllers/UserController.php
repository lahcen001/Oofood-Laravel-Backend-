<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function show(Request $request, $userId)
    {
        $user = User::find($userId);

        if($user) {
            return response()->json($user);
        }

        return response()->json(['message' => 'User not found!'], 404);
    }


    public function update(Request $request, $userId)
    {
        $user = User::find($userId)->update([
        'name' => $request->name,
        'email'=> $request->email,
        'password'=> bcrypt($request->password),
        'ville' => $request->ville,
        'phone'=> $request->phone,
        'adresse'=> $request->adresse,
        ]);
        return response()->json(['message' => 'yess!',$user], 404);
    }

    public function updateuser(Request $request, $id)
    {
        $user1 = User::find($id)->update([
        'ville' => $request->ville,
        'phone'=> $request->phone,
        'adresse'=> $request->adresse,
        ]);
        return response()->json(['message' => 'good job!', $user1], 404);
    }
}



