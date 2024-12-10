<?php

use App\Http\Controllers\Api\ArticleResepController;
use App\Http\Controllers\SettingsController;
use Illuminate\Support\Facades\Route;

Route::get('/', [App\Http\Controllers\WelcomeController::class, 'index']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/profile', [App\Http\Controllers\ProfileController::class, 'index'])->name('profile');

Route::middleware(['auth'])->group(function() {
    Route::get('/recipes/create', [ArticleResepController::class, 'create'])->name('recipes.create');
    Route::post('/recipes', [ArticleResepController::class, 'store'])->name('recipes.store');
});
Route::get('/my-recipes', function () {
    $userRecipes = \App\Models\ArticleResep::where('user_id', auth()->id())->get();
    return view('my-recipes', compact('userRecipes'));
})->middleware('auth')->name('my-recipes');
Route::middleware(['auth'])->group(function() {
    Route::delete('/recipes/{id}', [ArticleResepController::class, 'destroy'])->name('recipes.destroy');
    Route::put('/recipes/{id}', [ArticleResepController::class, 'update'])->name('recipes.update');
});

Route::get('/categories/create', function () {
    return view('categories.create');
})->name('categories.create');

Route::post('/categories', [App\Http\Controllers\Api\CategoryController::class, 'store'])->name('categories.store');
