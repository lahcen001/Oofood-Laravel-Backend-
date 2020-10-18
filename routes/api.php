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
// Route::post('register', 'UserClientController@register');
// Route::post('login', 'UserClientController@login');
// Route::get('profile', 'UserClientController@getAuthenticatedUser');
///////////////////////////////////////////////
Route::get('plats/{id}', 'platController@playByID');
Route::get('plats', 'platController@index');
Route::put('add/{plat}', 'platController@markAsAdded');
Route::put('remove/{plat}', 'platController@unmarkAsAdded');
////////// Categorie
Route::get('categorie', 'CategorieController@index');
////////// Reservation

Route::get('reservation/{id}', 'ReservationController@index');
/////////////////////////////////////////////////
Route::post('postreservation', 'ReservationController@reservation');
/////////////////////////////////////////////////
Route::post('order', 'OrderController@orders');
/////////////////////////////////////////////////
Route::get('getorder', 'OrderController@index');

Route::get('accepted/{id}', 'OrderController@accepted');


Route::get('getprofile/{userId}', 'OrderController@profile');
//////////////////////////////////////
Route::put('addcat/{order}', 'OrderController@markAsAdded');
Route::put('removecat/{order}', 'OrderController@unmarkAsAdded');

Route::get('getreser/{id}', 'ReservationController@getreser');

Route::post('register', 'AuthController@register');
Route::post('login', 'AuthController@login');

//////////////////////////////////////
Route::get('platscategorie/{id}', 'platController@categorie');


//////////////////////////////////////


Route::middleware('auth:api')->group(function() {

    Route::get('user/{userId}/detail', 'UserController@show');
  
});
Route::get('user/{userId}', 'UserController@show');
Route::put('users/{userId}', 'UserController@update');

//////////////////////////////////////

Route::delete('destroy/{id}', 'OrderController@destroy');
Route::put('quantite/{plat}', 'platController@quantite');
Route::put('updateall/{plat}', 'platController@updateall');
Route::put('accept/{order}', 'OrderController@accept');
Route::put('exp/{order}', 'OrderController@exp');
///////////
Route::put('updateuser/{id}', 'UserController@updateuser');