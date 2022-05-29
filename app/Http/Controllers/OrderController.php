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
        ->select('users.name', 'users.email', 'orders.price','orders.cont','orders.date','users.id', 'orders.imageURL', 'orders.id as id_order','orders.order_name','orders.accept','is_added','orders.exp')
        ->orderBy('orders.id', 'desc')
        ->get();

        return response()->json($users, 201);
    }


    public function destroy($id)
    {


        return response()->json([
            'delete' => Order::find($id)->delete(),
        ]);
    }



    public function orders(Request $request)
    {
        $orders = Order::create($request->all());

        return response()->json($orders, 201);
    }



    public function profile(Request $request,$userId)
    {
        $profile =Order::select('*')->where('user_id', $userId)->orderBy('id', 'desc')->get();


        return response()->json($profile, 201);
    }



       // change the is_added to true
       public function markAsAdded(Order $order) {
        $order->is_added = true;
        $order->update();
        return response()->json('plat updated!');
    }

    

    // change the is_added to false
    public function unmarkAsAdded(Order $order) {
        $order->is_added = false;
        $order->update();
        return response()->json('plat updated!');
    }

    public function accepted(Request $request,$Id)
    {
        $profile =Order::select('*')->where('is_added',$Id)->orderBy('id', 'desc')->get();


        return response()->json($profile, 201);
    }


    public function accept(Order $order) {
        $order->accept = true;
        $order->update();
        return response()->json($order);
    }
    public function exp(Order $order) {
        $order->exp = true;
        $order->update();
        return response()->json($order);
    }




}
