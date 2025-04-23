@extends('base.authBase')

@section('content')
<div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-indigo-100 to-purple-100">
    <div class="w-full max-w-md bg-white p-8 rounded-2xl shadow-2xl border border-gray-200 animate-fade-in">
        <h2 class="text-3xl font-extrabold text-center text-gray-800 mb-2">Welcome Back 👋</h2>
        <p class="text-sm text-center text-gray-500 mb-6">Silakan login ke akun Anda</p>

        @if (session('error'))
        <div class="mb-4 p-4 bg-red-100 text-red-800 rounded-lg shadow">
            {{ session('error') }}
        </div>
        @endif

        <form action="{{ route('login.post') }}" method="POST" class="space-y-5">
            @csrf

            <div>
                <label for="email" class="block text-sm font-semibold text-gray-700 mb-1">Email</label>
                <input type="email" name="email" id="email" required
                    class="block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-indigo-400 focus:outline-none transition duration-300 ease-in-out sm:text-sm"
                    placeholder="you@example.com">
            </div>

            <div>
                <label for="password" class="block text-sm font-semibold text-gray-700 mb-1">Password</label>
                <input type="password" name="password" id="password" required
                    class="block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-indigo-400 focus:outline-none transition duration-300 ease-in-out sm:text-sm"
                    placeholder="********">
            </div>

            <div>
                <button type="submit"
                    class="w-full py-2 px-4 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 shadow-md hover:shadow-lg transition duration-300 font-semibold">
                    Login
                </button>
            </div>
        </form>

        <p class="mt-6 text-center text-sm text-gray-600">
            Belum punya akun?
            <a href="{{ route('register') }}"
                class="font-medium text-indigo-600 hover:text-indigo-500 transition duration-300">Daftar Sekarang</a>
        </p>
    </div>
</div>
@endsection