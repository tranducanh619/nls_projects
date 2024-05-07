<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use Exception;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class LoginGoogleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function handleGoogleCallback()
    {
        try {
            $googleUser = Socialite::driver('google')->user();
        } catch (\Exception $e) {
            // Xử lý lỗi nếu có
            return redirect()->route('login')->with('error', 'Đã xảy ra lỗi khi đăng nhập bằng Google.');
        }

        $user = User::where('google_id', $googleUser->id)->first();
        // Kiểm tra role của người dùng
        if ($user->role == 'admin') {
            // Đăng nhập người dùng vào trang admin
            Auth::login($user);
            return redirect()->route('admin');
        }
        if (strpos($googleUser->email, '@hvnh.edu.vn') !== false) {
            // Lưu thông tin người dùng vào cơ sở dữ liệu
            $user = User::firstOrCreate(
                ['google_id' => $googleUser->id],
                ['name' => $googleUser->name, 'avatar' => $googleUser->avatar, 'email' => $googleUser->email, 'role' => 'sinhvien']
            );
            // Cập nhật thông tin đăng nhập đầu tiên nếu cần
            if (!$user->created_at) {
                $user->created_at = now();
                $user->save();
            }
        } else {
            // Nếu định dạng email không hợp lệ
            return redirect()->route('login')->with('error', 'Tài khoản email không hợp lệ.');
        }
        // Đăng nhập người dùng vào trang chủ
        Auth::login($user);
        return redirect()->route('trangchu'); // Thay 'trangchu' bằng route của trang chủ
    }
}
