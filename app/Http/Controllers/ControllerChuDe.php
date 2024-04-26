<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\ChuDeChinh;
use App\Models\ChuDe;
use App\Models\CauHoi;
use App\Models\DapAn;
use App\Controllers\CauHoiController;

class ControllerChuDe extends Controller
{
    public function ChuDeChinh()
    {
        $chuDeChinhs = ChuDeChinh::with('chudes')->get(); // Lấy dữ liệu từ bảng chủ đề chính và dữ liệu liên quan từ bảng chủ đề
        return view('trangchu', compact('chuDeChinhs'));
    }
    public function CauHoi()
    {
        //

    }
    public function ontap($id)
    {
        // Truy vấn dữ liệu của chủ đề dựa trên ID
        $chude = ChuDe::findOrFail($id); // Sử dụng findOrFail để trả về 404 nếu không tìm thấy chủ đề
    
        // Truy vấn dữ liệu câu hỏi và đáp án tương ứng với IDChuDe
        $cauhoi = CauHoi::with('dapAns')->where('IDChuDe', $id)->get();
    
        // Tạo một mảng để lưu trữ các IDCauHoi
        $cauHoiIds = $cauhoi->pluck('IDCauHoi');
    
        // Truy vấn đáp án tương ứng với các câu hỏi
        $dapan = DapAn::with('cauHoi')->whereIn('IDCauHoi', $cauHoiIds)->get();
    
        // Trả về view formontap với dữ liệu tương ứng
        return view('formontap', compact('chude', 'cauhoi', 'dapan'));
    }
    

    public function getTenDeTheoID($id)
    {
        // Truy vấn cơ sở dữ liệu để lấy tên của đề dựa trên ID
        $de = ChuDe::findOrFail($id);

        // Lấy tên của đề
        $tenDe = $de->ten_de; // Giả sử tên cột chứa tên đề là 'ten_de'

        // Trả về tên của đề
        return $tenDe;
    }
}
