<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ArticleResep;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ArticleResepController extends Controller
{
    public function index()
    {
        $articles = ArticleResep::with(['user', 'category'])->get();

        if (request()->wantsJson()) {
            return response()->json([
                'status' => true,
                'data' => $articles
            ]);
        }

        return view('recipes.all-recipes', compact('articles'));
    }
    public function create()
    {
        $categories = Category::all();
        return view('recipes.create', compact('categories'));
    }


    public function store(Request $request)
    {
        $data = [
            'title' => $request->title,
            'content' => $request->content,
            'image' => null,
            'rate_item_id' => $request->rate_item_id,
            'user_id' => auth()->id(),
            'category_id' => $request->category_id,
            'ingredients' => $request->ingredients,
            'instructions' => $request->instructions
        ];

        if ($request->hasFile('image')) {
            $data['image'] = $request->file('image')->store('articles', 'public');
        }

        $article = ArticleResep::create($data);

        return redirect()->route('home')->with('success', 'Recipe created successfully!');
    }
    public function update(Request $request, $id)
    {
        $article = ArticleResep::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'rate_item_id' => 'required|integer',
            'category_id' => 'required|exists:categories,id',
            'ingredients' => 'required|string',
            'instructions' => 'required|string'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ], 422);
        }

        $updateData = [
            'title' => $request->title,
            'content' => $request->content,
            'rate_item_id' => $request->rate_item_id,
            'category_id' => $request->category_id,
            'ingredients' => $request->ingredients,
            'instructions' => $request->instructions
        ];

        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('articles', 'public');
            $updateData['image'] = $imagePath;
        }

        $article->update($updateData);

        return redirect()->route('my-recipes')->with('success', 'Recipe updated successfully!');
    }

    public function destroy($id)
    {
        $article = ArticleResep::findOrFail($id);
        $article->delete();

        return redirect()->route('my-recipes')->with('success', 'Recipe deleted successfully!');
    }
}
