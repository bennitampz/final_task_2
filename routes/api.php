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
    Route::get('/recipes/create', [ArticleResepController::class, 'create']);
    Route::post('/recipes/create', [ArticleResepController::class, 'create']);
    Route::post('/recipes', [ArticleResepController::class, 'store']);
    Route::middleware('auth:api')->post('/profile/update', [App\Http\Controllers\Api\ApiController::class, 'updateProfile']);
    Route::post('/profile/update', [ApiController::class, 'updateProfile'])->middleware('auth:api');


});




// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:api');
