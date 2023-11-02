<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('voertuig', function (Blueprint $table) {
            $table->tinyIncrements('Id');
            $table->string('Kenteken', 12);
            $table->string('Type', 20);
            $table->date('Bouwjaar');
            $table->string('Brandstof', 20);
            $table->tinyInteger('TypeVoertuigId')->unsigned();
            $table->boolean('IsActief')->default(true);
            $table->string('Opmerkingen', 250)->nullable();
            $table->timestamp('DatumAangemaakt', 6)->useCurrent();
            $table->timestamp('DatumGewijzigd', 6)->useCurrent()->nullable();

            // Foreign key constraint
            $table->foreign('TypeVoertuigId')->references('Id')->on('typevoertuig')->onDelete('cascade');
        });
    }
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('voertuig');
    }
};
