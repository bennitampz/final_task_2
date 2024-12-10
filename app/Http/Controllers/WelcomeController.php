<?php

namespace App\Http\Controllers;

use App\Models\ArticleResep;
use App\Models\Category;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
        $recipes = ArticleResep::with(['user', 'category'])
            ->latest()
            ->take(6)
            ->get();

        $categories = Category::withCount('articles')
            ->latest()
            ->take(4)
            ->get();

        return view('welcome', compact('recipes', 'categories'));
    }
}
