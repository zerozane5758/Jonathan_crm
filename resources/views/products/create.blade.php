@extends('base.base')

@section('content')
<div class="container mx-auto mt-10">
    <h1 class="text-3xl font-bold">Tambah Produk</h1>
    <form action="{{ route('products.store') }}" method="POST" class="mt-6 space-y-6">
        @csrf
        <div>
            <label for="name" class="block text-sm font-medium text-gray-700">Nama</label>
            <input type="text" name="name" id="name" required
                class="block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
        </div>
        <div>
            <label for="description" class="block text-sm font-medium text-gray-700">Deskripsi</label>
            <textarea name="description" id="description"
                class="block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"></textarea>
        </div>
        <div>
            <label for="price" class="block text-sm font-medium text-gray-700">Harga</label>
            <input type="number" name="price" id="price" required
                class="block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
        </div>
        <button type="submit"
            class="w-full py-2 px-4 bg-indigo-600 text-white rounded-md hover:bg-indigo-700">
            Simpan
        </button>
    </form>
</div>
@endsection