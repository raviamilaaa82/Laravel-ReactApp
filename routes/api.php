<?php

use App\Http\Controllers\Api\Authcontroller;
use App\Http\Controllers\Api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->group(function(){
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::post('/logout',[Authcontroller::class,'logout']);
    Route::apiResource('/users',UserController::class);

});

Route::post('/signup',[Authcontroller::class,'signup']);
Route::post('/login',[Authcontroller::class,'login']);
