@extends('layouts.app')

@section('content')



<div class="container py-5">
    <div class="row">
        <!-- Welcome Section -->
        <div class="col-lg-12 mb-4">
            <div class="p-5 bg-white rounded-4 shadow-sm">
                <h1 class="display-5 fw-bold mb-3">Welcome to Recipe Hub</h1>
                <p class="lead text-muted">Discover, create and share your favorite recipes with our community.</p>
                <div class="d-flex gap-3">
                    <a href="#explore" class="btn btn-primary px-4 py-2">Explore Recipes</a>
                    <a href="{{ route('recipes.create') }}" class="btn btn-outline-secondary px-4 py-2">Create Recipe</a>
                    <a href="{{ route('my-recipes') }}" class="btn btn-outline-secondary px-4 py-2">List Recipe Created</a>
                    <a href="{{ route('categories.create') }}" class="btn btn-outline-secondary px-4 py-2">Create Category</a>
                    <a href="{{ route('categories.index') }}" class="btn btn-outline-secondary px-4 py-2">List Category</a>
                </div>
            </div>
        </div>

        <!-- Popular Categories -->
        <div class="col-lg-12 mb-4">
            <h2 class="fw-bold mb-4">Popular Categories</h2>
            <div class="row g-4">
                @forelse($categories as $category)
                <div class="col-md-3 col-sm-6">
                    <div class="card h-100 border-0 shadow-sm hover-lift">
                        <div class="card-body text-center">
                            @if($category->image)
                                <img src="{{ asset('storage/' . $category->image) }}"
                     class="img-fluid mb-3 rounded-circle"
                     style="width: 100px; height: 100px; object-fit: cover;"
                     alt="{{ $category->name }}">
                            @else
                                <i class="fas fa-utensils fa-2x mb-3 text-primary"></i>
                            @endif
                            <h5 class="card-title">{{ $category->name }}</h5>
                            <p class="card-text text-muted">{{ Str::limit($category->description, 50) }}</p>
                            <small class="text-primary">{{ $category->articles_count }} Recipes</small>
                        </div>
                    </div>
                </div>
                @empty
                <div class="col-12">
                    <p class="text-center text-muted">No categories found</p>
                </div>
                @endforelse            </div>
        </div>

        <!-- Latest Recipes -->
        <div id="explore" class="col-lg-12">
            <h2  class="fw-bold mb-4">Latest Recipes</h2>
            <div class="row g-4">
                @forelse($recipes as $recipe)
                <div class="col-lg-4 col-md-6">
                    <div class="card border-0 shadow-sm hover-lift">
                        <img src="{{ $recipe->image ? asset('storage/' . $recipe->image) : 'https://via.placeholder.com/350x200' }}"
                     class="card-img-top" alt="{{ $recipe->title }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $recipe->title }}</h5>
                            <p class="card-text text-muted">{{ Str::limit($recipe->content, 100) }}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="ratings">
                                    @for($star = 1; $star <= $recipe->rate_item_id; $star++)
                                        <i class="fas fa-star text-warning"></i>
                                    @endfor
                                </div>
                                <small class="text-muted">By {{ $recipe->user->name }}</small>
                            </div>
                            <div class="mt-2">
                                <span class="badge bg-primary">{{ $recipe->category->name }}</span>
                            </div>
                        </div>
                    </div>
                </div>
                @empty
                <div class="col-12">
                    <p class="text-center text-muted">No recipes found</p>
                </div>
                @endforelse
            </div>
        </div>
<style>
.hover-lift {
    transition: transform 0.2s ease;
}
.hover-lift:hover {
    transform: translateY(-5px);
}
.card {
    border-radius: 1rem;
    overflow: hidden;
}
.bg-white {
    background: linear-gradient(145deg, #ffffff, #f8f9fa);
}
</style>
@endsection
