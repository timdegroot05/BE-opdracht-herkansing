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
    Schema::create('instructeur', function (Blueprint $table) {
        $table->tinyIncrements('Id');
        $table->string('Voornaam', 50);
        $table->string('Tussenvoegsel', 10)->nullable();
        $table->string('Achternaam', 50);
        $table->string('Mobiel', 12);
        $table->date('DatumInDienst');
        $table->string('AantalSterren', 6);
        $table->boolean('IsActief')->default(true);
        $table->string('Opmerkingen', 250)->nullable();
        $table->timestamp('DatumAangemaakt')->useCurrent();
        $table->timestamp('DatumGewijzigd')->useCurrent()->nullable();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('instructeur');
    }
};
