@extends('base.base')

@section('content')
<div class="container mx-auto mt-10 px-4">
    <h1 class="text-3xl font-bold text-gray-800 mb-6">Daftar Customer</h1>

    <div class="overflow-x-auto bg-white rounded-lg shadow">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gradient-to-r from-indigo-500 to-purple-500 text-white">
                <tr>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Nama</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Email</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Telepon</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Layanan</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-100 text-gray-700">
                @forelse ($customers as $customer)
                <tr class="hover:bg-gray-50 transition duration-200">
                    <td class="px-6 py-4 whitespace-nowrap font-medium">{{ $customer->name }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">{{ $customer->email }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">{{ $customer->phone }}</td>
                    <td class="px-6 py-4">
                        @if($customer->products->isNotEmpty())
                        <ul class="list-disc list-inside space-y-1">
                            @foreach ($customer->products as $product)
                            <li class="text-sm text-gray-800">{{ $product->name }}</li>
                            @endforeach
                        </ul>
                        @else
                        <span class="italic text-gray-400">Belum memiliki layanan</span>
                        @endif
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="4" class="px-6 py-4 text-center text-gray-500 italic">
                        Belum ada customer yang terdaftar.
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
