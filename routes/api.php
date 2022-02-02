<?php

use App\Http\Controllers\BarbieController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);
Route::get('/countries', [CountryController::class, 'index']);
Route::get('/barbies', [BarbieController::class, 'index']);

Route::group(['middleware' => 'auth:sanctum'], function () {
    // Auth
    Route::post('/logout', [UserController::class, 'logout']);

    // Barbies
    Route::post('/barbies', [BarbieController::class, 'store']);
    Route::put('/barbies/{barbie}', [BarbieController::class, 'update']);
    Route::delete('/barbies/{barbie}', [BarbieController::class, 'destroy']);

    // Favorites
    Route::post('/favorites', [FavoriteController::class, 'store']);
    Route::get('/favorites/{favorite}', [FavoriteController::class, 'show']);
    Route::delete('/favorites/{favorite}', [FavoriteController::class, 'destroy']);
});
