<?php

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
        // DB::table('cart__product')->truncate();

        DB::table('purchases')->truncate();
        DB::table('paymentmethods')->truncate();
        DB::table('cart_product')->truncate();
        DB::table('users')->truncate();
        DB::table('carts')->truncate();




        DB::table('products')->truncate();
        DB::table('brands')->truncate();
        DB::table('categories')->truncate();

         $this->call(UsersTableSeeder::class);
         $this->call(CategoriesTableSeeder::class);
         $this->call(BrandsTableSeeder::class);
         $this->call(ProductsTableSeeder::class);

    }
}
