<?php

namespace App\Http\Controllers;
use App\Reservation;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ReservationController extends Controller
{

    public function index($id)
    {
        $reser =Reservation::select('*')->where('id_user', $id)->get();


        return response()->json($reser, 201);
    }



public function reservation(Request $request)
    {
        $article = Reservation::create($request->all());

        return response()->json($article, 201);
    }

///////



///////
public function updatereser(Request $request , $userId) {
    $data = Reservation::find($userId);
    $data->adresse = $request->adresse;
    $data->ville = $request->ville;
    $data->phone = $request->phone;
    $data->save();
    return response()->json($data, 201);
}
////////


    public function getreser($id) {


        $reser =Reservation::select('*')->where('id_user', $Id)->get();


        return response()->json($reser, 201);
    }

}


