<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
class CategorieController extends Controller
{
    public function index() {
        $categories = Category::orderBy('id', 'asc')->get();
        return $categories->toJson();
    }
}
