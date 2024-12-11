@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <!-- Enhanced Breadcrumb with Icons -->
    <nav aria-label="breadcrumb" class="bg-light p-3 rounded mb-4">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="{{ url('/') }}" class="text-decoration-none"><i class="fas fa-home"></i> Home</a></li>
            <li class="breadcrumb-item"><a href="{{ route('categories.show', $article->category_id) }}" class="text-decoration-none"><i class="fas fa-folder"></i> {{ $article->category->name }}</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{ $article->title }}</li>
        </ol>
    </nav>

    <div class="row">
        <div class="col-lg-8">
            <!-- Main Image Card -->
            <div class="card border-0 shadow-sm mb-4">
                <img src="{{ $article->image ? asset('storage/' . $article->image) : 'https://source.unsplash.com/1200x600/?recipe,food' }}"
                     class="card-img-top" alt="{{ $article->title }}" style="height: 400px; object-fit: cover;">

                <div class="card-body">
                    <h1 class="display-4 mb-3">{{ $article->title }}</h1>

                    <!-- Author Info Card -->
                    <div class="d-flex align-items-center p-3 bg-light rounded mb-4">
                        <img src="https://ui-avatars.com/api/?name={{ urlencode($article->user->name) }}&background=random"
                             class="rounded-circle shadow-sm" width="60" height="60">
                        <div class="ms-3">
                            <h5 class="mb-1">{{ $article->user->name }}</h5>
                            <span class="text-muted">Recipe Creator</span>
                        </div>
                        <div class="ms-auto">
                            <div class="bg-white p-2 rounded shadow-sm">
                                <div class="text-warning mb-1">
                                    @for($i = 0; $i < $article->rate_item_id; $i++)
                                        <i class="fas fa-star"></i>
                                    @endfor
                                </div>
                                <small class="text-muted">Rating: {{ $article->rate_item_id }}/5</small>
                            </div>
                        </div>
                    </div>

                    <!-- Description Card -->
                    <div class="card mb-4">
                        <div class="card-header bg-primary text-white">
                            <i class="fas fa-info-circle me-2"></i> Description
                        </div>
                        <div class="card-body">
                            <p class="card-text lead">{{ $article->content }}</p>
                        </div>
                    </div>

                    <!-- Recipe Content -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card h-100 border-primary mb-4">
                                <div class="card-header bg-primary text-white">
                                    <i class="fas fa-list-ul me-2"></i> Ingredients
                                </div>
                                <div class="card-body">
                                    <div class="ingredients-list">
                                        {!! nl2br(e($article->ingredients)) !!}
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card h-100 border-primary mb-4">
                                <div class="card-header bg-primary text-white">
                                    <i class="fas fa-tasks me-2"></i> Instructions
                                </div>
                                <div class="card-body">
                                    <div class="instructions-list">
                                        {!! nl2br(e($article->instructions)) !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sidebar -->
        <div class="col-lg-4">
            <div class="card border-0 shadow-sm mb-4 sticky-top" style="top: 20px;">
                <div class="card-header bg-primary text-white">
                    <i class="fas fa-info-circle me-2"></i> Recipe Details
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span><i class="fas fa-folder text-primary me-2"></i> Category</span>
                            <span class="badge bg-primary rounded-pill">{{ $article->category->name }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span><i class="fas fa-star text-warning me-2"></i> Rating</span>
                            <span class="badge bg-warning text-dark rounded-pill">{{ $article->rate_item_id }}/5</span>
                        </li>
                    </ul>
                </div>
                <div class="card-footer bg-white">
                    <a href="{{ url()->previous() }}" class="btn btn-outline-primary w-100">
                        <i class="fas fa-arrow-left me-2"></i> Back to Recipes
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .ingredients-list, .instructions-list {
        line-height: 1.8;
        white-space: pre-wrap;
    }
    .card {
        transition: transform 0.2s;
    }
    .card:hover {
        transform: translateY(-5px);
    }
</style>
@endsection
