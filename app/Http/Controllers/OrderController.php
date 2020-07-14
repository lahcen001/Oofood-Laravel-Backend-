<?php

namespace App\Http\Controllers;
use App\Order;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class OrderController extends Controller
{

    public function index() {
       
    
        $users = DB::table('users')
        ->join('orders', 'users.id', '=', 'orders.user_id')
        ->select('users.name', 'users.email', 'orders.price', 'orders.imageURL')
       
        ->get();

        return response()->json($users, 201);
    }

    

    public function orders(Request $request)
    {
        $article = Order::create($request->all());

        return response()->json($article, 201);
    }
}
