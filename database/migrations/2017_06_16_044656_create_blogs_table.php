<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;


class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
      
     
     * @return void
     */
    public function up()
    {
        Schema::enableForeignKeyConstraints();
        Schema::create('blogs', function (Blueprint $table) {
                  
            $table->increments('id');
            $table->integer('user_id')->unsigned()->default('0');
            $table->string('active')->default('0');
            $table->string('title')->default();
            $table->text('body');
            $table->string('published_at')->default();
            //$table->timestamps();
            $table->dateTime('created_at')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->dateTime('updated_at')->default(DB::raw('CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP'));
            $table->string('deleted_at')->default();
        });

         Schema::table('blogs', function($table) {
            $table->foreign('user_id')
                ->references('id')->on('users')
                 ->onDelete('cascade');
        });

       
    }


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('blogs');
    }
}
