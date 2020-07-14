<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorie;
class CategorieController extends Controller
{
    public function index() {
        $categories = Categorie::orderBy('id', 'asc')->get();
        return $categories->toJson();
    }
}
