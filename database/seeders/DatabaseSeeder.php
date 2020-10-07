<?php

namespace Database\Seeders;

use Carbon\Factory;
use App\Models\Review;
use App\Models\Product;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // factory(Product::class,50)->create();
        // factory(Review::class,300)->create();
        \App\Models\User::factory(5)->create();
        \App\Models\Product::factory(50)->create();
        \App\Models\Review::factory(300)->create();
    }
}
