<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Recipe Hub</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">

        <!-- Add Tailwind CSS -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])

        <!-- Add Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

        <style>
            .recipe-title {
                font-family: 'Playfair Display', serif;
            }
            .fade-in {
                animation: fadeIn 1s ease-in;
            }
            @keyframes fadeIn {
                0% { opacity: 0; transform: translateY(20px); }
                100% { opacity: 1; transform: translateY(0); }
            }
        </style>
    </head>
    <body class="antialiased bg-gradient-to-br from-gray-50 via-white to-gray-100 dark:from-gray-900 dark:via-gray-800 dark:to-gray-900">
        <!-- Enhanced Navigation with Glass Effect -->
        <nav class="bg-white/80 backdrop-blur-xl fixed w-full z-50 dark:bg-gray-800/80 shadow-lg border-b border-gray-200/20">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between h-20">
                    <div class="flex items-center space-x-4">
                        <i class="fas fa-utensils text-[#FF2D20] text-3xl"></i>
                        <h1 class="recipe-title text-3xl font-bold text-[#FF2D20] hover:scale-105 transition-transform duration-300">Recipe Hub</h1>
                    </div>
                    <div class="flex items-center space-x-8">
                        <a href="#featured" class="hidden md:block text-gray-600 hover:text-[#FF2D20] transition-colors dark:text-gray-300">
                            <i class="fas fa-star mr-2"></i>Featured
                        </a>
                        <a href="#categories" class="hidden md:block text-gray-600 hover:text-[#FF2D20] transition-colors dark:text-gray-300">
                            <i class="fas fa-th-large mr-2"></i>Categories
                        </a>
                        @auth
                        <div class="relative group">
                            <button class="flex items-center space-x-2 text-gray-700 hover:text-[#FF2D20] px-4 py-2 rounded-full border border-gray-200 hover:border-[#FF2D20] transition-all dark:text-gray-200">
                                <i class="fas fa-user-circle"></i>
                                <span>{{ Auth::user()->name }}</span>
                                <i class="fas fa-chevron-down text-sm"></i>
                            </button>
                            <div class="absolute right-0 w-48 mt-2 py-2 bg-white rounded-lg shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300 ease-in-out transform group-hover:translate-y-0 translate-y-2 dark:bg-gray-700">
                                <a href="{{ url('/profile') }}" class="block px-4 py-2 text-gray-800 hover:bg-gray-100 dark:text-gray-200 dark:hover:bg-gray-600">
                                    <i class="fas fa-user mr-2"></i> Profile
                                </a>
                                <hr class="my-2 border-gray-200 dark:border-gray-600">
                                <form action="{{ route('logout') }}" method="POST">
                                    @csrf
                                    <button class="w-full text-left px-4 py-2 text-red-600 hover:bg-gray-100 dark:hover:bg-gray-600">
                                        <i class="fas fa-sign-out-alt mr-2"></i> Logout
                                    </button>
                                </form>
                            </div>
                        </div>
                        @else
                            <a href="/login" class="text-gray-700 hover:text-[#FF2D20] px-5 py-2.5 rounded-full border-2 border-transparent hover:border-[#FF2D20] transition-all duration-300 dark:text-gray-200">
                                <i class="fas fa-sign-in-alt mr-2"></i>Login
                            </a>
                            <a href="/register" class="bg-[#FF2D20] text-white px-6 py-2.5 rounded-full hover:bg-[#FF2D20]/90 transform hover:scale-105 transition-all duration-300 shadow-lg hover:shadow-[#FF2D20]/20">
                                <i class="fas fa-user-plus mr-2"></i>Register
                            </a>
                        @endauth
                    </div>
                </div>
            </div>
        </nav>

        <!-- Hero Section with Parallax Effect -->
        <div class="relative min-h-screen flex items-center">
            <div class="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1495195134817-aeb325a55b65?ixlib=rb-4.0.3')] bg-cover bg-center opacity-10 dark:opacity-5"></div>
            <div class="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-32">
                <div class="text-center fade-in">
                    <h1 class="recipe-title text-6xl md:text-7xl lg:text-8xl font-bold text-gray-900 dark:text-white mb-8">
                        Discover & Share
                        <span class="text-[#FF2D20] block mt-2">Amazing Recipes</span>
                    </h1>
                    <p class="mt-8 text-xl md:text-2xl text-gray-600 dark:text-gray-300 max-w-3xl mx-auto leading-relaxed">
                        Join our community of passionate food lovers and explore thousands of mouthwatering recipes from around the world
                    </p>
                    <div class="mt-12 flex flex-col sm:flex-row items-center justify-center gap-6">
                        <a href="#featured" class="group inline-flex items-center px-8 py-4 text-lg font-medium rounded-full text-white bg-[#FF2D20] hover:bg-[#FF2D20]/90 transform hover:scale-105 transition-all duration-300 shadow-xl hover:shadow-2xl">
                            <i class="fas fa-search mr-2 group-hover:rotate-12 transition-transform"></i>
                            Explore Recipes
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Categories Section -->
        <div id="categories" class="py-20 bg-white dark:bg-gray-800">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="recipe-title text-4xl font-bold text-center mb-16 text-gray-900 dark:text-white">
                    Popular Categories
                </h2>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-8">
                    @foreach(['Breakfast', 'Lunch', 'Dinner', 'Desserts'] as $category)
                    <div class="group relative rounded-2xl overflow-hidden shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:scale-105">
                        <img src="https://source.unsplash.com/480x320/?{{ strtolower($category) }},food"
                             alt="{{ $category }}"
                             class="w-full h-48 object-cover group-hover:scale-110 transition-transform duration-500">
                        <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent"></div>
                        <div class="absolute bottom-0 left-0 right-0 p-6">
                            <h3 class="text-xl font-bold text-white">{{ $category }}</h3>
                            <p class="text-gray-200 mt-2">Explore recipes →</p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>

        <!-- Featured Recipes Section -->
        <div id="featured" class="py-20 bg-gray-50 dark:bg-gray-900">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex items-center justify-between mb-16">
                    <h2 class="recipe-title text-4xl font-bold text-gray-900 dark:text-white">
                        <i class="fas fa-star text-[#FF2D20] mr-3"></i>
                        Featured Recipes
                    </h2>
                    <a href="#" class="flex items-center text-[#FF2D20] hover:text-[#FF2D20]/80 transition-colors">
                        View All
                        <i class="fas fa-arrow-right ml-2 group-hover:translate-x-2 transition-transform"></i>
                    </a>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    @forelse($recipes as $recipe)
                    <div class="bg-white rounded-2xl shadow-xl overflow-hidden dark:bg-gray-800 transform hover:scale-105 transition-all duration-300">
                        <div class="relative">
                            <img src="{{ $recipe->image ? asset('storage/' . $recipe->image) : 'https://source.unsplash.com/480x320/?recipe,cooking' }}"
                                  alt="{{ $recipe->title }}"
                                  class="w-full h-56 object-cover">
                            <div class="absolute top-4 right-4 bg-white/90 px-4 py-2 rounded-full text-sm font-medium text-[#FF2D20] dark:bg-gray-800/90">
                                {{ $recipe->category->name }}
                            </div>
                        </div>
                        <div class="p-6">
                            <div class="flex items-center mb-4">
                                <img src="https://ui-avatars.com/api/?name={{ urlencode($recipe->user->name) }}" class="w-10 h-10 rounded-full mr-3">
                                <div>
                                    <h4 class="text-sm font-medium text-gray-900 dark:text-white">{{ $recipe->user->name }}</h4>
                                    <p class="text-sm text-gray-500">Recipe Creator</p>
                                </div>
                            </div>
                            <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-3">{{ $recipe->title }}</h3>
                            <p class="text-gray-600 dark:text-gray-300 mb-4">{{ Str::limit($recipe->content, 100) }}</p>
                            <div class="flex items-center justify-between">
                                <div class="flex items-center">
                                    <div class="flex text-yellow-400">
                                        @for ($star = 1; $star <= $recipe->rate_item_id; $star++)
                                            <i class="fas fa-star text-sm"></i>
                                        @endfor
                                    </div>
                                    <span class="ml-2 text-sm text-gray-500">({{ $recipe->rate_item_id }} rating)</span>
                                </div>
                                <a href="#" class="flex items-center text-[#FF2D20] hover:text-[#FF2D20]/80 transition-colors">
                                    View Recipe
                                    <i class="fas fa-arrow-right ml-2"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    @empty
                    <div class="col-span-3 text-center py-8">
                        <p class="text-gray-500 dark:text-gray-400">No recipes found</p>
                    </div>
                    @endforelse
                </div>
            </div>
        </div>

        <!-- Newsletter Section -->
        <div class="bg-[#FF2D20]/5 py-20 dark:bg-gray-800">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="bg-white dark:bg-gray-700 rounded-3xl p-12 shadow-xl relative overflow-hidden">
                    <div class="absolute top-0 right-0 -mt-8 -mr-8">
                        <svg class="w-32 h-32 text-[#FF2D20]/10" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 14H4V8l8 5 8-5v10zm-8-7L4 6h16l-8 5z"/>
                        </svg>
                    </div>
                    <div class="relative z-10">
                        <h2 class="recipe-title text-4xl font-bold text-gray-900 dark:text-white mb-6">Get Weekly Recipe Updates</h2>
                        <p class="text-xl text-gray-600 dark:text-gray-300 mb-8">Subscribe to our newsletter and never miss out on delicious new recipes!</p>
                        <form class="flex gap-4">
                            <input type="email" placeholder="Enter your email" class="flex-1 px-6 py-4 rounded-full border-2 border-gray-200 focus:border-[#FF2D20] focus:ring-2 focus:ring-[#FF2D20]/20 outline-none transition-all">
                            <button class="px-8 py-4 bg-[#FF2D20] text-white rounded-full hover:bg-[#FF2D20]/90 transform hover:scale-105 transition-all shadow-lg hover:shadow-xl">
                                <i class="fas fa-paper-plane mr-2"></i>
                                Subscribe
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-white dark:bg-gray-900 py-12">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="grid grid-cols-1 md:grid-cols-4 gap-12">
                    <div>
                        <div class="flex items-center space-x-3 mb-6">
                            <i class="fas fa-utensils text-[#FF2D20] text-2xl"></i>
                            <h3 class="recipe-title text-2xl font-bold text-gray-900 dark:text-white">Recipe Hub</h3>
                        </div>
                        <p class="text-gray-600 dark:text-gray-400">Discover and share the world's best recipes with our growing community of food lovers.</p>
                    </div>
                    <div>
                        <h4 class="font-bold text-gray-900 dark:text-white mb-6">Quick Links</h4>
                        <ul class="space-y-4">
                            <li><a href="#" class="text-gray-600 dark:text-gray-400 hover:text-[#FF2D20]">About Us</a></li>
                            <li><a href="#" class="text-gray-600 dark:text-gray-400 hover:text-[#FF2D20]">Contact</a></li>
                            <li><a href="#" class="text-gray-600 dark:text-gray-400 hover:text-[#FF2D20]">FAQ</a></li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-bold text-gray-900 dark:text-white mb-6">Categories</h4>
                        <ul class="space-y-4">
                            <li><a href="#" class="text-gray-600 dark:text-gray-400 hover:text-[#FF2D20]">Breakfast</a></li>
                            <li><a href="#" class="text-gray-600 dark:text-gray-400 hover:text-[#FF2D20]">Lunch</a></li>
                            <li><a href="#" class="text-gray-600 dark:text-gray-400 hover:text-[#FF2D20]">Dinner</a></li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="font-bold text-gray-900 dark:text-white mb-6">Follow Us</h4>
                        <div class="flex space-x-4">
                            <a href="#" class="w-10 h-10 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-400 hover:bg-[#FF2D20] hover:text-white transition-all">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="w-10 h-10 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-400 hover:bg-[#FF2D20] hover:text-white transition-all">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="w-10 h-10 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center text-gray-600 dark:text-gray-400 hover:bg-[#FF2D20] hover:text-white transition-all">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="border-t border-gray-200 dark:border-gray-700 mt-12 pt-8 text-center text-gray-600 dark:text-gray-400">
                    <p>&copy; {{ date('Y') }} Recipe Hub. All rights reserved.</p>
                </div>
            </div>
        </footer>
    </body>
</html>

