<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


///////////////////////////////////////////////
Route::post('register', 'UserClientController@register');
Route::post('login', 'UserClientController@login');
Route::get('profile', 'UserClientController@getAuthenticatedUser');
///////////////////////////////////////////////
Route::get('plats/{id}', 'platController@playByID');
Route::get('plats', 'platController@index');
Route::put('add/{plat}', 'platController@markAsAdded');
Route::put('remove/{plat}', 'platController@unmarkAsAdded');
////////// Categorie
Route::get('categorie', 'CategorieController@index');
////////// Reservation

Route::get('reservation', 'ReservationController@index');
/////////////////////////////////////////////////
Route::post('postreservation', 'ReservationController@reservation');
/////////////////////////////////////////////////
Route::post('order', 'OrderController@orders');
/////////////////////////////////////////////////
Route::get('getorder', 'OrderController@index');
