<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Recipe Hub</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Add Tailwind CSS -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="antialiased bg-gray-50 dark:bg-gray-900">
        <!-- Hero Section -->
        <div class="relative overflow-hidden">
            <nav class="bg-white/80 backdrop-blur-md fixed w-full z-50 dark:bg-gray-800/80">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="flex justify-between h-16">
                        <div class="flex items-center">
                            <h1 class="text-2xl font-bold text-[#FF2D20]">Recipe Hub</h1>
                        </div>

                        <div class="flex items-center space-x-4">
                            <a href="/login" class="text-gray-700 hover:text-[#FF2D20] px-3 py-2 rounded-md dark:text-gray-200">Login</a>
                            <a href="/api/register" class="bg-[#FF2D20] text-white px-4 py-2 rounded-md hover:bg-[#FF2D20]/90">Register</a>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Hero Content -->
            <div class="pt-24 pb-16 sm:pt-32">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="text-center">
                        <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl dark:text-white">
                            Discover & Share Amazing Recipes
                        </h1>
                        <p class="mt-6 text-lg leading-8 text-gray-600 dark:text-gray-300">
                            Join our community of food lovers and explore thousands of delicious recipes
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Featured Recipes Section -->
        <div class="py-16 bg-white dark:bg-gray-800">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <h2 class="text-3xl font-bold text-gray-900 dark:text-white mb-8">Featured Recipes</h2>

                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    <!-- Recipe Cards -->
                    @for ($i = 1; $i <= 6; $i++)
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden dark:bg-gray-700">
                        <img src="https://source.unsplash.com/480x320/?food,recipe" alt="Recipe" class="w-full h-48 object-cover">
                        <div class="p-6">
                            <h3 class="text-xl font-semibold text-gray-900 dark:text-white">Delicious Recipe {{$i}}</h3>
                            <p class="mt-2 text-gray-600 dark:text-gray-300">Quick and easy recipe perfect for any occasion.</p>
                            <div class="mt-4 flex items-center justify-between">
                                <span class="text-sm text-gray-500 dark:text-gray-400">30 mins</span>
                                <button class="text-[#FF2D20] hover:text-[#FF2D20]/80">View Recipe →</button>
                            </div>
                        </div>
                    </div>
                    @endfor
                </div>
            </div>
        </div>

        <!-- CTA Section -->
        <div class="bg-[#FF2D20]/10 py-16 dark:bg-gray-900">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
                <h2 class="text-3xl font-bold text-gray-900 dark:text-white">Ready to start cooking?</h2>
                <p class="mt-4 text-lg text-gray-600 dark:text-gray-300">Join our community and start sharing your recipes today</p>
                <div class="mt-8">
                    <a href="/api/register" class="bg-[#FF2D20] text-white px-6 py-3 rounded-md hover:bg-[#FF2D20]/90 inline-block">
                        Get Started Free
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
