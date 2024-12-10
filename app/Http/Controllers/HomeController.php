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
        $recipes = ArticleResep::with(['user', 'category'])
            ->latest()
            ->take(6)
            ->get();

        $categories = Category::all();

        return view('home', compact('recipes', 'categories'));
    }
}
