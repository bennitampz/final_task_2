@extends('layouts.app')

@section('content')
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Create New Recipe</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('recipes.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-3">
                            <label for="title" class="form-label">Recipe Title</label>
                            <input type="text" class="form-control" id="title" name="title" required>
                        </div>

                        <div class="mb-3">
                            <label for="category_id" class="form-label">Category</label>
                            <select class="form-select" id="category_id" name="category_id" required>
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="content" class="form-label">Description</label>
                            <textarea class="form-control" id="content" name="content" rows="3" required></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="ingredients" class="form-label">Ingredients</label>
                            <textarea class="form-control" id="ingredients" name="ingredients" rows="5" required
                                placeholder="Enter each ingredient on a new line"></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="instructions" class="form-label">Cooking Instructions</label>
                            <textarea class="form-control" id="instructions" name="instructions" rows="5" required
                                placeholder="Enter step-by-step instructions"></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="rate_item_id" class="form-label">Recipe Difficulty (1-5)</label>
                            <select class="form-select" id="rate_item_id" name="rate_item_id" required>
                                <option value="1">1 - Very Easy</option>
                                <option value="2">2 - Easy</option>
                                <option value="3">3 - Medium</option>
                                <option value="4">4 - Hard</option>
                                <option value="5">5 - Very Hard</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="image" class="form-label">Recipe Image</label>
                            <input type="file" class="form-control" id="image" name="image" accept="image/*">
                        </div>

                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary">Create Recipe</button>
                            <a href="{{ route('home') }}" class="btn btn-outline-secondary">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.card {
    border-radius: 1rem;
    border: none;
}
.card-header {
    border-radius: 1rem 1rem 0 0 !important;
}
.form-control, .form-select {
    border-radius: 0.5rem;
}
</style>
@endsection
