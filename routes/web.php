<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginGoogleController;
use App\Http\Controllers\ControllerChuDe;
use App\Http\Controllers\ThongKeCauTraLoi;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Models\ChuDeChinh;

Route::get('ontap-{id}', [ControllerChuDe::class, 'ontap'])->name('ontap'); // Sử dụng route parameter {id} để nhận ID của chủ đề

Route::post('/thongke', [ThongKeCauTraLoi::class, 'submit'])->name('thongke');

Route::get('/login', function () {
    return view('login');
});

Route::get('auth/google', [LoginGoogleController::class, 'redirectToGoogle'])->name('login-by-google');
Route::get('auth/google/callback', [LoginGoogleController::class, 'handleGoogleCallback']);
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/', [ControllerChuDe::class, 'ChuDeChinh']);
});
