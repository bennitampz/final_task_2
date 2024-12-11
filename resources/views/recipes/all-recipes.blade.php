@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row mb-4">
        <div class="col-12">
            <h2 class="display-4 fw-bold text-primary">
                <i class="fas fa-utensils me-2"></i>All Recipes
            </h2>
        </div>
    </div>

    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        @foreach($articles as $article)
            <div class="col">
                <a href="{{ route('recipes.show', $article->id) }}" class="text-decoration-none">
                    <div class="card h-100 shadow-sm hover-shadow transition-all">
                        @if($article->image)
                            <img src="{{ Storage::url($article->image) }}"
                                 class="card-img-top"
                                 alt="{{ $article->title }}"
                                 style="height: 200px; object-fit: cover;">
                        @else
                            <div class="card-img-top bg-light d-flex align-items-center justify-content-center"
                                 style="height: 200px;">
                                <i class="fas fa-image text-muted fa-3x"></i>
                            </div>
                        @endif

                        <div class="card-body">
                            <h5 class="card-title fw-bold mb-3 text-dark">{{ $article->title }}</h5>
                            <p class="card-text text-muted">{{ Str::limit($article->content, 150) }}</p>
                        </div>

                        <div class="card-footer bg-white border-top-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center">
                                    <i class="fas fa-user-circle text-primary me-2"></i>
                                    <small class="text-muted">{{ $article->user->name }}</small>
                                </div>
                                <span class="badge bg-primary rounded-pill">
                                    {{ $article->category->name }}
                                </span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        @endforeach
    </div>
</div>

<style>
    .hover-shadow:hover {
        transform: translateY(-5px);
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15) !important;
    }
    .transition-all {
        transition: all 0.3s ease;
    }
</style>
@endsection
