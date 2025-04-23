@extends('base.base')

@section('content')
<div class="container mx-auto mt-10 px-4">
    <h1 class="text-3xl font-bold text-gray-800 mb-6">Daftar Project</h1>

    <div class="overflow-x-auto bg-white rounded-lg shadow">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gradient-to-r from-indigo-500 to-purple-500 text-white">
                <tr>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Nama Lead</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Layanan</th>
                    <th class="px-6 py-3 text-left text-sm font-semibold uppercase tracking-wider">Status</th>
                    <th class="px-6 py-3 text-center text-sm font-semibold uppercase tracking-wider">Aksi</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-100 text-gray-700">
                @forelse ($projects as $project)
                <tr class="hover:bg-gray-50 transition duration-200">
                    <td class="px-6 py-4 whitespace-nowrap">{{ $project->lead->name }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">{{ $project->lead->product->name }}</td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        @if ($project->status === 'pending')
                            <span class="inline-block bg-yellow-100 text-yellow-800 text-sm px-3 py-1 rounded-full font-semibold">
                                Pending
                            </span>
                        @else
                            <span class="inline-block bg-green-100 text-green-800 text-sm px-3 py-1 rounded-full font-semibold">
                                Approved
                            </span>
                        @endif
                    </td>
                    <td class="px-6 py-4 text-center">
                        @if ($project->status === 'pending')
                        <form action="{{ route('projects.approve', $project) }}" method="POST" class="inline-block">
                            @csrf
                            <button type="submit" 
                                    class="bg-green-600 text-white px-4 py-2 rounded-lg shadow hover:bg-green-700 transition duration-300">
                                Approve
                            </button>
                        </form>
                        @else
                        <span class="text-gray-400">✔ Approved</span>
                        @endif
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="4" class="px-6 py-4 text-center text-gray-500 italic">
                        Belum ada project yang terdaftar.
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection
