<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::withCount('articles')->get();
        return view('categories.index', compact('categories'));
    }

    public function create()
    {
        return view('categories.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg|max:2048'
        ]);

        $imagePath = $request->file('image')->store('categories', 'public');

        Category::create([
            'name' => $validated['name'],
            'description' => $validated['description'],
            'image' => $imagePath,
            'user_id' => auth()->id()
        ]);

        return redirect()->route('home')->with('success', 'Category created successfully!');
    }

    public function show($id)
    {
        $category = Category::with(['user', 'articles.user'])->findOrFail($id);

        if (request()->wantsJson()) {
            return response()->json([
                'status' => true,
                'data' => $category
            ]);
        }

        return view('recipes.category', compact('category'));
    }

    public function update(Request $request, $id)
    {
        $category = Category::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:categories,name,' . $id,
            'description' => 'required|string|max:1000',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048'
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $data = [
            'name' => $request->name,
            'description' => $request->description
        ];

        // Handle image update
        if ($request->hasFile('image')) {
            // Delete old image if exists
            if ($category->image) {
                Storage::disk('public')->delete($category->image);
            }

            // Store new image
            $image = $request->file('image');
            $data['image'] = $image->store('categories', 'public');
        }

        $category->update($data);

        return redirect()->route('categories.index')
            ->with('success', 'Category updated successfully');
    }
}
