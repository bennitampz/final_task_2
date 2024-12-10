<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::table('article_reseps', function (Blueprint $table) {
            $table->text('ingredients')->after('content');
            $table->text('instructions')->after('ingredients');
        });
    }

    public function down()
    {
        Schema::table('article_reseps', function (Blueprint $table) {
            $table->dropColumn(['ingredients', 'instructions']);
        });
    }
};
