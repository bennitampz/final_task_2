@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="fw-bold mb-4">My Recipes</h2>
    <div class="row g-4">
        @foreach($userRecipes as $recipe)
        <div class="col-lg-4 col-md-6">
            <div class="card border-0 shadow-sm hover-lift">
                <img src="{{ $recipe->image ? asset('storage/' . $recipe->image) : 'https://via.placeholder.com/350x200' }}" class="card-img-top" alt="{{ $recipe->title }}">
                <div class="card-body">
                    <h5 class="card-title">{{ $recipe->title }}</h5>
                    <p class="card-text text-muted">{{ Str::limit($recipe->content, 100) }}</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="ratings">
                            @for($star = 1; $star <= $recipe->rate_item_id; $star++)
                                <i class="fas fa-star text-warning"></i>
                            @endfor
                        </div>
                        <div class="action-buttons">
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editModal{{ $recipe->id }}">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <form action="{{ url('/recipes/'.$recipe->id) }}" method="POST" class="d-inline" onsubmit="return confirm('Are you sure you want to delete this recipe?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm">
                                    <i class="fas fa-trash"></i> Delete
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Edit Modal -->
        <div class="modal fade" id="editModal{{ $recipe->id }}" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Recipe</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <form action="{{ url('/recipes/'.$recipe->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="modal-body">
                            <div class="mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" name="title" value="{{ $recipe->title }}" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Content</label>
                                <textarea class="form-control" name="content" rows="3" required>{{ $recipe->content }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Ingredients</label>
                                <textarea class="form-control" name="ingredients" rows="3" required>{{ $recipe->ingredients }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Instructions</label>
                                <textarea class="form-control" name="instructions" rows="3" required>{{ $recipe->instructions }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Rating</label>
                                <input type="number" class="form-control" name="rate_item_id" value="{{ $recipe->rate_item_id }}" min="1" max="5" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Category</label>
                                <select class="form-select" name="category_id" required>
                                    @foreach(\App\Models\Category::all() as $category)
                                        <option value="{{ $category->id }}" {{ $recipe->category_id == $category->id ? 'selected' : '' }}>
                                            {{ $category->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Image</label>
                                <input type="file" class="form-control" name="image">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
