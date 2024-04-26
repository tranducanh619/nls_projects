<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DapAn;

class ThongKeCauTraLoi extends Controller
{
    public function submit(Request $request)
    {
        // Kiểm tra xem có dữ liệu từ request không
        if ($request->has('dap_an')) {
            // Lấy dữ liệu từ request
            $dapAnDuocChon = $request->dap_an;

            // Khởi tạo biến đếm số câu trả lời đúng và tổng số câu hỏi
            $soCauTraLoiDung = 0;
            $tongSoCauHoi = count($dapAnDuocChon);

            // Lặp qua các câu hỏi và đáp án được chọn
            foreach ($dapAnDuocChon as $idCauHoi => $idDapAn) {
                // Lấy đáp án đúng của câu hỏi
                $dapAnDung = DapAn::where('IDCauHoi', $idCauHoi)->where('LaDapAnDung', true)->first();

                // Kiểm tra xem đáp án được chọn có trùng với đáp án đúng không
                if ($dapAnDung && $dapAnDung->IDDapAn == $idDapAn) {
                    $soCauTraLoiDung++;
                }
            }

            // Tính phần trăm câu trả lời đúng
            $phanTramDung = ($tongSoCauHoi > 0) ? ($soCauTraLoiDung / $tongSoCauHoi) * 100 : 0;

            // Trả về view thongke với số câu trả lời đúng và tổng số câu hỏi
            return view('thongke', [
                'soCauTraLoiDung' => $soCauTraLoiDung,
                'tongSoCauHoi' => $tongSoCauHoi,
                'phanTramDung' => $phanTramDung
            ]);
        }

        // Trong trường hợp không có dữ liệu từ request, xử lý tương ứng (ví dụ: hiển thị thông báo lỗi)
        return redirect()->back()->with('error', 'Không có dữ liệu được gửi từ form.');
    }
    
     
}