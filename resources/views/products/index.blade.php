@extends('base.base')

@section('content')
<div class="container mx-auto mt-10 px-4">
    <div class="flex justify-between items-center mb-6">
        <h1 class="text-3xl font-bold text-gray-800">Master Produk</h1>
        <a href="{{ route('products.create') }}"
            class="bg-indigo-600 text-white px-5 py-2 rounded-lg shadow-md hover:bg-indigo-700 transition duration-300">
            + Tambah Produk
        </a>
    </div>

    <div class="overflow-x-auto bg-white rounded-lg shadow">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gradient-to-r from-indigo-500 to-purple-500 text-white">
                <tr>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Layanan</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Deskripsi</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Harga</th>
                    <th class="px-6 py-3 text-center text-sm font-semibold uppercase tracking-wider">Aksi</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-100 text-gray-700">
                @forelse ($products as $product)
                <tr class="hover:bg-gray-50 transition duration-200">
                    <td class="px-6 py-4 whitespace-nowrap font-medium">{{ $product->name }}</td>
                    <td class="px-6 py-4 whitespace-normal">{{ $product->description }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <span class="inline-block bg-green-100 text-green-800 text-sm px-3 py-1 rounded-full font-semibold">
                            Rp {{ number_format($product->price, 0, ',', '.') }}
                        </span>
                    </td>
                    <td class="px-6 py-4 text-center whitespace-nowrap space-x-2">
                        <a href="{{ route('products.edit', $product) }}"
                            class="bg-blue-500 text-white px-4 py-1.5 rounded-lg hover:bg-blue-600 transition duration-300">
                            Edit
                        </a>
                        <form action="{{ route('products.destroy', $product) }}" method="POST" class="inline-block">
                            @csrf
                            @method('DELETE')
                            <button type="submit"
                                    onclick="return confirm('Yakin ingin menghapus produk ini?')"
                                    class="bg-red-500 text-white px-4 py-1.5 rounded-lg hover:bg-red-600 transition duration-300">
                                Hapus
                            </button>
                        </form>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="4" class="px-6 py-4 text-center text-gray-500 italic">
                        Belum ada data produk.
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
