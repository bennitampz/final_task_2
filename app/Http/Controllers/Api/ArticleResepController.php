<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ArticleResep;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ArticleResepController extends Controller
{
    public function index()
    {
        $articles = ArticleResep::with(['user', 'category'])->get();
        return response()->json([
            'status' => true,
            'data' => $articles
        ]);
    }

    public function store(Request $request)
{
    $validator = Validator::make($request->all(), [
        'title' => 'required|string|max:255',
        'content' => 'required|string',
        'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        'rate_item_id' => 'required|integer',
        'category_id' => 'required|exists:categories,id'
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => false,
            'errors' => $validator->errors()
        ], 422);
    }

    $data = [
        'title' => $request->title,
        'content' => $request->content,
        'image' => null,
        'rate_item_id' => $request->rate_item_id,
        'user_id' => auth()->id(),
        'category_id' => $request->category_id
    ];

    // Only process image if it exists in the request
    if ($request->hasFile('image')) {
        $data['image'] = $request->file('image')->store('articles', 'public');
    }

    $article = ArticleResep::create($data);

    return response()->json([
        'status' => true,
        'message' => 'Article created successfully',
        'data' => $article
    ], 201);
}

    public function show($id)
    {
        $article = ArticleResep::with(['user', 'category'])->findOrFail($id);
        return response()->json([
            'status' => true,
            'data' => $article
        ]);
    }

    public function update(Request $request, $id)
    {
        $article = ArticleResep::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'rate_item_id' => 'required|integer',
            'category_id' => 'required|exists:categories,id'
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
            'category_id' => $request->category_id
        ];

        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('articles', 'public');
            $updateData['image'] = $imagePath;
        }

        $article->update($updateData);

        return response()->json([
            'status' => true,
            'message' => 'Article updated successfully',
            'data' => $article
        ]);
    }

    public function destroy($id)
    {
        $article = ArticleResep::findOrFail($id);
        $article->delete();

        return response()->json([
            'status' => true,
            'message' => 'Article deleted successfully'
        ]);
    }
}
