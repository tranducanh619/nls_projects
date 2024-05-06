<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\ChuDeChinh;
use App\Models\ChuDe;
use App\Models\CauHoi;
use App\Models\DapAn;
use App\Models\Phien;
use App\Controllers\CauHoiController;
use Illuminate\Support\Facades\Auth;

class ControllerChuDe extends Controller
{
    public function ChuDeChinh()
    {
        $chuDeChinhs = ChuDeChinh::with('chudes')->get(); // Lấy dữ liệu từ bảng chủ đề chính và dữ liệu liên quan từ bảng chủ đề
        $user = Auth::user();

        return view('/trangchu', ['chuDeChinhs' => $chuDeChinhs, 'user' => $user]);
    }
    public function CauHoi()
    {
        //

    }
    public function ontap($id)
    {
        // Kiểm tra xem có phiên ôn tập đang tồn tại không
        $phienDangTonTai = Phien::where('IDNguoiDung', auth()->user()->id)
            ->whereNull('NgayGioKetThuc')
            ->first();

        // Nếu không tìm thấy phiên ôn tập đang tồn tại, tạo một phiên mới
        if (!$phienDangTonTai) {
            $phienDangTonTai = Phien::create([
                'IDNguoiDung' => auth()->user()->id, // Lấy ID của người dùng đăng nhập
                'NgayGioBatDau' => now(), // Lấy ngày và giờ hiện tại
            ]);
        }
        // Truy vấn dữ liệu của chủ đề dựa trên ID
        $chude = ChuDe::where('IDChuDe',$id)->first(); // Sử dụng findOrFail để trả về 404 nếu không tìm thấy chủ đề

        // Truy vấn dữ liệu câu hỏi và đáp án tương ứng với IDChuDe
        $cauhoi = CauHoi::with('dapAns')->where('IDChuDe', $id)->get();
        $soCauHoi = $cauhoi->count();
        // Tạo một mảng để lưu trữ các IDCauHoi
        $cauHoiIds = $cauhoi->pluck('IDCauHoi');

        // Truy vấn đáp án tương ứng với các câu hỏi
        $dapan = DapAn::with('cauHoi')->whereIn('IDCauHoi', $cauHoiIds)->get();

        // Trả về view formontap với dữ liệu tương ứng
        return view('FormOnTap', compact('chude', 'cauhoi', 'dapan', 'soCauHoi', 'phienDangTonTai'));
    }
}
