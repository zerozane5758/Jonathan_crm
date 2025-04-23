<nav class="bg-gradient-to-r from-indigo-600 to-purple-600 shadow-lg">
    <div class="container mx-auto px-4 py-4 flex flex-wrap items-center justify-between">
        <div class="text-white text-2xl font-bold tracking-wide hover:text-gray-200 transition duration-300">
            PT SMART
        </div>

        <div class="flex flex-wrap items-center space-x-4 md:space-x-6 text-sm md:text-base">
            @php
                $navItems = [];
                if (Auth::check() && Auth::user()->role === 'admin') {
                    $navItems = [
                        ['label' => 'Leads', 'route' => '/leads'],
                        ['label' => 'Master Produk', 'route' => '/products'],
                        ['label' => 'Customers', 'route' => '/customers'],
                    ];
                } elseif (Auth::check() && Auth::user()->role === 'manager') {
                    $navItems = [
                        ['label' => 'Leads', 'route' => '/leads'],
                        ['label' => 'Master Produk', 'route' => '/products'],
                        ['label' => 'Projects', 'route' => '/projects'],
                        ['label' => 'Customers', 'route' => '/customers'],
                    ];
                }
            @endphp

            @foreach ($navItems as $item)
                <a href="{{ $item['route'] }}"
                    class="text-white px-3 py-2 rounded-md transition duration-300 hover:bg-white/20 hover:text-indigo-100 font-medium">
                    {{ $item['label'] }}
                </a>
            @endforeach
        </div>

        <div class="mt-4 md:mt-0">
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit"
                        class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg shadow transition duration-300">
                    Logout
                </button>
            </form>
        </div>
    </div>
</nav>