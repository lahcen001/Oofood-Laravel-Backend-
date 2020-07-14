<?php

namespace App\Http\Controllers;
use App\Reservation;

use Illuminate\Http\Request;

class ReservationController extends Controller
{

    public function index()
    {
        return Reservation::all();
    }



public function reservation(Request $request)
    {
        $article = Reservation::create($request->all());

        return response()->json($article, 201);
    }



}


