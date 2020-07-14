<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plats', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('name');
            $table->text('description1');
            $table->text('description2');
            $table->text('description3');
            $table->float('price');
            $table->string('image1');
            $table->string('image2');
            $table->string('image3');
            $table->boolean('is_added')->default(0);
            $table->integer('category_id')->unsigned();

         //    $table->foreign('category_id')
         //   ->references('id')
         //   ->on('categories')
        //   ->onDelete('cascade');
         $table->timestamps();

    });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plats');
    }
}
