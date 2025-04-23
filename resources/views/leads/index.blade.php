@extends('base.base')

@section('content')
<div class="container mx-auto mt-10 px-4">
    <div class="flex justify-between items-center mb-6">
        <h1 class="text-3xl font-bold text-gray-800">List Calon Customer (Lead)</h1>
        <a href="{{ route('leads.create') }}" 
           class="bg-indigo-600 text-white px-5 py-2 rounded-lg shadow-md hover:bg-indigo-700 transition duration-300">
            + Tambah Lead
        </a>
    </div>

    <div class="overflow-x-auto bg-white rounded-lg shadow-md">
        <table class="min-w-full table-auto border-collapse">
            <thead class="bg-gradient-to-r from-indigo-500 to-purple-500 text-white">
                <tr>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Nama</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Email</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Telepon</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Produk</th>
                    <th class="px-6 py-3 text-center text-sm font-semibold uppercase tracking-wider">Aksi</th>
                </tr>
            </thead>
            <tbody class="text-gray-700 divide-y divide-gray-200">
                @forelse ($leads as $lead)
                <tr class="hover:bg-gray-50 transition duration-200">
                    <td class="px-6 py-4 whitespace-nowrap">{{ $lead->name }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">{{ $lead->email }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">{{ $lead->phone }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">{{ $lead->product->name }}</td>
                    <td class="px-6 py-4 text-center whitespace-nowrap">
                        <a href="{{ route('leads.edit', $lead) }}" 
                            class="bg-blue-500 text-white px-4 py-1.5 rounded-lg hover:bg-blue-600 transition duration-300">
                            Edit
                        </a>
                        <form action="{{ route('leads.destroy', $lead) }}" method="POST" class="inline-block ml-2">
                            @csrf
                            @method('DELETE')
                            <button type="submit" 
                                    class="bg-red-500 text-white px-4 py-1.5 rounded-lg hover:bg-red-600 transition duration-300"
                                    onclick="return confirm('Yakin ingin menghapus lead ini?')">
                                Hapus
                            </button>
                        </form>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="5" class="px-6 py-4 text-center text-gray-500 italic">Belum ada data lead.</td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
