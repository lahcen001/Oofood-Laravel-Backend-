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

public function categorie(Plat $plat,$category_id)
{
    $plat =Plat::select('*')->where('category_id', $category_id)->get();


    return response()->json($plat, 201);
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



    public function quantite(Request $request, $plat)
    {
        $plats = Plat::find($plat)->update([
           
                'cont' => $request->cont,
                
              
                ]);
                return response()->json($request);
         
    }

    
    public function updateall(Request $request , $id)
    {
        $id = Plat::find($id)->update([
           
                'cont' => $request->cont,
                'is_added' => $request->is_added,
              
                ]);
                return response()->json($request);
         
    }


  



}
