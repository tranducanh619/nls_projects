<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginGoogleController;
use App\Http\Controllers\ControllerChuDe;
use App\Http\Controllers\ThongKeCauTraLoi;
use App\Http\Controllers\BaiVietController;
use App\Http\Controllers\controlleradmin;
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

Route::get('/admin', [controlleradmin::class, 'Hienthichude'])->name('admin');
Route::get('admincauhoi/cauhoi/{id}', [controlleradmin::class, 'showQuestions'])->name('admincauhoi');

Route::get('/edit_cauhoi/{id}', [controlleradmin::class, 'edit'])->name('edit.cauhoihienthi');
Route::post('/update_cauhoi', [controlleradmin::class, 'update'])->name('updatecauhoi');
Route::get('/delete_cauhoi/{id}', [controlleradmin::class, 'delete'])->name('delete.cauhoi');


Route::get('/admin/danhsachnguoidung', [controlleradmin::class, 'hienThiDanhSachNguoiDung'])->name('hienthi.nguoidung');

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::get('auth/google', [LoginGoogleController::class, 'redirectToGoogle'])->name('login-by-google');
Route::get('auth/google/callback', [LoginGoogleController::class, 'handleGoogleCallback']);
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/trangchu', [ControllerChuDe::class, 'ChuDeChinh'])->name('trangchu');
});


Route::get('/diendan', [BaiVietController::class, 'hienThiForm'])->name('hienthidiendan');
Route::post('/diendan', [BaiVietController::class, 'themBaiViet'])->name('diendan');
Route::post('/diendan/update', [BaiVietController::class, 'update'])->name('diendan.update');
Route::get('/diendan/xoa/{id}', [BaiVietController::class, 'delete'])->name('xoa.diendan');

Route::get('/diendan000', function () {
    return view('diendan000');
})->name('diendan000');

