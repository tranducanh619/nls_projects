<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\ControllerChuDe;
use App\Models\CauHoi;

class CauHoiController extends Controller
{
    public function cauhoi($idChuDe)
    {
        // Truy vấn dữ liệu từ cơ sở dữ liệu dựa trên IDChuDe
        $cauHois = CauHoi::with('dapAns')->where('IDChuDe', $idChuDe)->get();

        // Trả về view và truyền dữ liệu câu hỏi và đáp án tương ứng
        return view('ontap', compact('cauHois'));
    }
}