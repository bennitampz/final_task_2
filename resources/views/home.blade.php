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
                    <a href="#create" class="btn btn-outline-secondary px-4 py-2">Create Recipe</a>
                </div>
            </div>
        </div>





        <!-- Featured Categories -->
        <div class="col-lg-12 mb-4">
            <h2 class="fw-bold mb-4">Popular Categories</h2>
            <div class="row g-4">
                @foreach(['Breakfast', 'Lunch', 'Dinner', 'Desserts'] as $category)
                <div class="col-md-3 col-sm-6">
                    <div class="card h-100 border-0 shadow-sm hover-lift">
                        <div class="card-body text-center">
                            <i class="fas fa-utensils fa-2x mb-3 text-primary"></i>
                            <h5 class="card-title">{{ $category }}</h5>
                            <p class="card-text text-muted">Explore {{ strtolower($category) }} recipes</p>
                        </div>

                    </div>
                </div>
                @endforeach
            </div>
        </div>


        <!-- Recent Recipes -->
        <div class="col-lg-12">
            <h2 class="fw-bold mb-4">Latest Recipes</h2>
            <div class="row g-4">
                @for($i = 1; $i <= 6; $i++)
                <div class="col-lg-4 col-md-6">
                    <div class="card border-0 shadow-sm hover-lift">
                        <img src="https://via.placeholder.com/350x200" class="card-img-top" alt="Recipe Image">
                        <div class="card-body">
                            <h5 class="card-title">Recipe Title {{ $i }}</h5>
                            <p class="card-text text-muted">A brief description of this amazing recipe...</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="ratings">
                                    @for($star = 1; $star <= 5; $star++)
                                    <i class="fas fa-star text-warning"></i>
                                    @endfor
                                </div>
                                <small class="text-muted">15 min</small>
                            </div>
                        </div>
                    </div>
                </div>
                @endfor
            </div>
        </div>
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
