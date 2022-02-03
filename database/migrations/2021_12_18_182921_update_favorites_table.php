<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateFavoritesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //ne moze 1 korisnik vise puta da stavi 1 barbiku za favorita
        Schema::table('favorites', function ($table) {
            $table->unique(['user_id', 'barbie_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */ 
    //rollback metoda koja ponistava migraciju izvrsenu prethodnu
    public function down()
    {
        Schema::table('favorites', function ($table) {
            $table->dropUnique(['user_id', 'barbie_id']);
        });
    }
}
