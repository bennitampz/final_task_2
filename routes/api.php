<?php

use App\Http\Controllers\API\ApiController;
use App\Http\Controllers\Api\ArticleResepController;
use App\Http\Controllers\Api\CategoryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


//Open Route
Route::post("register", [ApiController::class, "register"]);
Route::post("login", [ApiController::class,"login"]);


//Protect Route
Route::group(["middleware"=>["auth:api"]
], function(){
    Route::get("profile", [ApiController::class,"profile"]);
    Route::get("logout", [ApiController::class, "logout"]);
    Route::apiResource('articles', ArticleResepController::class);
    Route::apiResource('categories', CategoryController::class);
});




// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:api');
