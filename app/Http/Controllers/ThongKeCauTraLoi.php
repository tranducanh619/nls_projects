<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DapAn;
use App\Models\CauHoi;
use App\Models\CauTraLoi;
use App\Models\KetQua;
use App\Models\Phien;

class ThongKeCauTraLoi extends Controller
{
    public function submit(Request $request)
{
    // Kiểm tra xem có dữ liệu từ request không
    if ($request->has('dap_an')) {
        // Lấy dữ liệu từ request
        $dapAnDuocChon = $request->dap_an;

        // Lấy tổng số câu hỏi có cùng IDChuDe từ bảng cauhoi
        $idChuDe = $request->IDChuDeCauHoi; // Thay ... bằng IDChuDe mong muốn
        $tongSoCauHoi = CauHoi::where('IDChuDe', $idChuDe)->count();

        // Khởi tạo biến đếm số câu trả lời đúng
        $soCauTraLoiDung = 0;

        // Lặp qua các câu hỏi và đáp án được chọn
        foreach ($dapAnDuocChon as $idCauHoi => $idDapAn) {
            // Lấy đáp án đúng của câu hỏi
            $dapAnDung = DapAn::where('IDCauHoi', $idCauHoi)->where('LaDapAnDung', true)->first();

            // Kiểm tra xem đáp án được chọn có trùng với đáp án đúng không
            if ($dapAnDung && $dapAnDung->IDDapAn == $idDapAn) {
                $soCauTraLoiDung++;
            }

            $idPhien = $request->IDPhien;
            Phien::where('IDPhien', $idPhien)->update([
                'NgayGioKetThuc' => now()
            ]);
            // Lưu kết quả trả lời vào bảng cautraloi
            CauTraLoi::create([
                'IDNguoiDung' => auth()->user()->id,
                'IDPhien' => $idPhien,
                'IDCauHoi' => $idCauHoi,
                'IDDapAnChon' => $idDapAn,
            ]);
        }

        // Tính điểm và lưu kết quả thống kê vào bảng ketqua
        $diem = ($tongSoCauHoi > 0) ? ($soCauTraLoiDung / $tongSoCauHoi) * 10 : 0;
        KetQua::create([
            'IDPhien' => $idPhien,
            'Diem' => $diem.'/'.$tongSoCauHoi,
        ]);

        // Trả về view thongke với số câu trả lời đúng và tổng số câu hỏi
        return view('thongke', [
            'soCauTraLoiDung' => $soCauTraLoiDung,
            'tongSoCauHoi' => $tongSoCauHoi,
            'phanTramDung' => $soCauTraLoiDung / $tongSoCauHoi * 100,
            'diem' => $diem,
        ]);
    }
    
    // Trong trường hợp không có dữ liệu từ request, xử lý tương ứng (ví dụ: hiển thị thông báo lỗi)
    return redirect()->back()->with('error', 'Không có dữ liệu được gửi từ form.');
}
    
     
}