@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="text-4xl font-bold text-center mb-16">Explore Food Categories</h2>

    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        @foreach($categories as $category)
        <div class="col">
            <a href="{{ route('categories.show', $category->id) }}" class="text-decoration-none">
                <div class="card h-100 shadow-lg hover:shadow-xl transition-all duration-300">
                    <img src="{{ $category->image ? asset('storage/' . $category->image) : 'https://source.unsplash.com/480x320/?food' }}"
                         class="card-img-top" alt="{{ $category->name }}" style="height: 200px; object-fit: cover;">
                    <div class="card-overlay position-absolute bottom-0 start-0 end-0 p-4 bg-gradient-to-t from-black/70 to-transparent">
                        <h3 class="card-title h4 fw-bold text-white mb-2">{{ $category->name }}</h3>
                        <p class="card-text text-light">
                            <i class="fas fa-utensils me-2"></i>
                            {{ $category->articles_count }} Recipes Available
                        </p>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
</div>

<style>
.card {
    position: relative;
    overflow: hidden;
    cursor: pointer;
}
.card:hover img {
    transform: scale(1.05);
    transition: transform 0.5s ease;
}
.card img {
    transition: transform 0.5s ease;
}
</style>
@endsection
