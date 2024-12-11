@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="row mb-4">
        <div class="col-12">
            <h1 class="display-4">{{ $category->name }} Recipes</h1>
        </div>
    </div>

    <div class="row">
        @forelse($category->articles as $recipe)
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="{{ $recipe->image ? asset('storage/' . $recipe->image) : 'https://source.unsplash.com/480x320/?recipe,food' }}"
                         class="card-img-top" alt="{{ $recipe->title }}" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h5 class="card-title">{{ $recipe->title }}</h5>
                        <p class="card-text text-muted">{{ Str::limit($recipe->content, 100) }}</p>

                        <div class="d-flex justify-content-between align-items-center">
                            <small class="text-muted">By {{ $recipe->user->name }}</small>
                            <div class="text-warning">
                                @for($i = 0; $i < $recipe->rate_item_id; $i++)
                                    <i class="fas fa-star"></i>
                                @endfor
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-white">
                        <a href="{{ route('recipes.show', $recipe->id) }}" class="btn btn-primary w-100">View Recipe</a>
                    </div>

                </div>
            </div>
        @empty
            <div class="col-12 text-center">
                <div class="alert alert-info">
                    No recipes found in this category
                </div>
            </div>
        @endforelse
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <a href="{{ url('/') }}" class="btn btn-secondary">
                <i class="fas fa-arrow-left"></i> Back to Home
            </a>
        </div>
    </div>
</div>
@endsection
