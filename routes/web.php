<?php

use App\Http\Controllers\Api\ArticleResepController;
use App\Http\Controllers\Api\CategoryController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Route::get('/', [App\Http\Controllers\WelcomeController::class, 'index']);
Route::get('/all-recipes', [ArticleResepController::class, 'index'])->name('all-recipes');
Route::get('/explore-categories', function() {
    $categories = App\Models\Category::withCount('articles')->get();
    return view('categories.explore', compact('categories'));
})->name('explore-categories');

Auth::routes();

/**
 * Authenticated Routes
 */
Route::middleware(['auth'])->group(function() {
    // Create Category Route
    Route::get('/categories/create', [CategoryController::class, 'create'])->name('categories.create');
    Route::post('/categories', [CategoryController::class, 'store'])->name('categories.store');

    // Create Recipe Route
    Route::get('/recipes/create', [ArticleResepController::class, 'create'])->name('recipes.create');
    Route::post('/recipes', [ArticleResepController::class, 'store'])->name('recipes.store');

    // Other authenticated routes
    Route::delete('/recipes/{id}', [ArticleResepController::class, 'destroy'])->name('recipes.destroy');
    Route::put('/recipes/{id}', [ArticleResepController::class, 'update'])->name('recipes.update');

    Route::put('/categories/{id}', [CategoryController::class, 'update'])->name('categories.update');
    Route::delete('/categories/{id}', [CategoryController::class, 'destroy'])->name('categories.destroy');

    // User-specific routes
    Route::get('/my-recipes', function () {
        $userRecipes = \App\Models\ArticleResep::where('user_id', auth()->id())->get();
        return view('my-recipes', compact('userRecipes'));
    })->name('my-recipes');
});

// Dynamic Routes (should be after static routes)
Route::get('/categories/{id}', [CategoryController::class, 'show'])->name('categories.show');
Route::get('/recipes/{id}', [ArticleResepController::class, 'show'])->name('recipes.show');

// Other Routes
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/profile', [App\Http\Controllers\ProfileController::class, 'index'])->name('profile');
Route::get('/categories', [App\Http\Controllers\CategoryController::class, 'index'])->name('categories.index');

Route::fallback(function () {
    return view('errors.404');
});
