<?php

namespace App\Http\Controllers;

use App\Models\ArticleResep;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $categories = Category::withCount('articles')->orderBy('articles_count', 'desc')->take(4)->get();
        $recipes = ArticleResep::with(['user', 'category'])
            ->latest()
            ->take(6)
            ->get();

        return view('home', compact('categories', 'recipes'));
    }
}
