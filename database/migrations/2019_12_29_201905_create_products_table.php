<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->string('name',100);
            $table->text('description')->nullable();
            $table->text('specifications')->nullable();
            $table->text('characteristics')->nullable();
            $table->float('price', 8, 2);
            $table->unsignedBigInteger('category_id')->default(0);
            $table->foreign('category_id')->references('id')->on('categories');
            $table->unsignedBigInteger('brand_id')->default(0);
            $table->foreign('brand_id')->references('id')->on('brands');
            $table->softDeletes(); //deleted_at
            $table->integer('stock')->default(0);
            $table->unsignedBigInteger('offer_id')->nullable();
            $table->foreign('offer_id')->references('id')->on('offers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
        // $table->dropColumn('stock');
        // $table->dropColumn('description');
        // $table->dropColumn('specifications');
    }
}
