<?php

use App\Http\Controllers\VoertuigController;
use App\Models\Voertuig;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InstructeurController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/', [VoertuigController::class, 'index']);
Route::get('/instructeurs', [InstructeurController::class, 'index'])->name('instructeurs.index');
Route::get('/voertuigen', [VoertuigController::class, 'index'])->name('voertuigen.index');
Route::get('/voertuigen/create', [VoertuigController::class, 'create'])->name('voertuigen.create');
Route::post('/voertuigen', [VoertuigController::class, 'store'])->name('voertuigen.store');
Route::get('/voertuigen/{voertuig}/edit', [VoertuigController::class, 'edit'])->name('voertuigen.edit');
Route::put('/voertuigen/{voertuig}', [VoertuigController::class, 'update'])->name('voertuigen.update');
Route::delete('/voertuigen/{voertuig}', [VoertuigController::class, 'destroy'])->name('voertuigen.destroy');
