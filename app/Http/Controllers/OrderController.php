<?php

namespace App\Http\Controllers;
use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{

    public function index() {
        $orders = Order::orderBy('id', 'asc')->get();
        return $orders->toJson();

    }

    public function orders(Request $request)
    {
        $article = Order::create($request->all());

        return response()->json($article, 201);
    }
}
