<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Product::create([
            'name' => 'D-net Premium',
            'description' => 'Service provider dengan layanan premium untuk kebutuhan internet cepat dan stabil.',
            'price' => 1500000, 
        ]);

        Product::create([
            'name' => 'D-net Corporate',
            'description' => 'Layanan internet khusus untuk kebutuhan perusahaan dengan kecepatan tinggi dan stabilitas maksimal.',
            'price' => 3000000, 
        ]);

        Product::create([
            'name' => 'D-net Loop',
            'description' => 'Layanan internet untuk kebutuhan rumah tangga dengan harga terjangkau dan kualitas terbaik.',
            'price' => 800000, 
        ]);
    }
}