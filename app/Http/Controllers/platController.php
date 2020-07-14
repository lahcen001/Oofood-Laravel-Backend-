<?php

namespace App\Http\Controllers;
use App\Plat;
use Illuminate\Http\Request;

class platController extends Controller
{
    public function index() {
        $plats = Plat::orderBy('id', 'asc')->get();
        return $plats->toJson();

    }


    public function playByID($id){
        $plats2 =Plat::find($id);

        return $plats2->toJson();
}

    // change the is_added to true
    public function markAsAdded(Plat $plat) {
        $plat->is_added = true;
        $plat->update();
        return response()->json('plat updated!');
    }

    // change the is_added to false
    public function unmarkAsAdded(Plat $plat) {
        $plat->is_added = false;
        $plat->update();
        return response()->json('plat updated!');
    }
}
