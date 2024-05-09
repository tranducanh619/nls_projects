<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChuDe;
use App\Models\CauHoi;
use App\Models\DapAn;
use App\Models\ChuDeChinh;
use App\Models\KetQua;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class controlleradmin extends Controller
{
    //
    public function showQuestions($id)
    {
        // Truy vấn dữ liệu của chủ đề dựa trên ID
        $chude = ChuDe::findOrFail($id); // Sử dụng findOrFail để trả về 404 nếu không tìm thấy chủ đề
        $cbchude = ChuDe::all();
        // Truy vấn dữ liệu câu hỏi và đáp án tương ứng với IDChuDe
        $cauhoi = CauHoi::with('dapAns')->where('IDChuDe', $id)->get();
        $soCauHoi = $cauhoi->count();
        // Tạo một mảng để lưu trữ các IDCauHoi
        $cauHoiIds = $cauhoi->pluck('IDCauHoi');

        // Truy vấn đáp án tương ứng với các câu hỏi
        $dapan = DapAn::with('cauHoi')->whereIn('IDCauHoi', $cauHoiIds)->get();

        // Trả về view Admin với dữ liệu tương ứng
        return view('admincauhoi', compact('chude', 'cauhoi', 'dapan', 'soCauHoi', 'cbchude'));
    }


    public function Hienthichude()
    {
        $chuDeChinhs = ChuDeChinh::with('chudes')->get(); // Lấy dữ liệu từ bảng chủ đề chính và dữ liệu liên quan từ bảng chủ đề
        return view('/Admin', ['chuDeChinhs' => $chuDeChinhs]);
    }

    public function edit($id)
    {
        // Lấy thông tin câu hỏi
        $cauHoi = CauHoi::findOrFail($id);

        // Lấy danh sách đáp án của câu hỏi
        $dapAn = DapAn::where('IDCauHoi', $id)->get();
        return view('edit_cauhoi', compact('cauHoi', 'dapAn'));
    }

    public function update(Request $request)
    {


        // Lấy thông tin câu hỏi từ request
        $cauHoi = CauHoi::findOrFail($request->IDCauHoi);
        $cauHoi->NoiDungCauHoi = $request->NoiDungCauHoi;

        // Xử lý ảnh minh họa (nếu có)
        if ($request->hasFile('anhmh')) {
            // Xóa ảnh cũ (nếu cần)
            // Và tải ảnh mới lên
            $imageName = time() . '.' . $request->anhmh->extension();
            $request->anhmh->move(public_path('db_img/' . $cauHoi->IDChuDe), $imageName);
            $cauHoi->anhmh = $imageName;
        }

        // Lưu câu hỏi
        $cauHoi->save();

        // Lưu thông tin đáp án
        foreach ($request->dapAns as $idDapAn => $noiDungDapAn) {
            $dapAn = DapAn::findOrFail($idDapAn);
            $dapAn->NoiDungDapAn = $noiDungDapAn;
            // Lưu đáp án
            $dapAn->save();
        }
        // Lưu thông tin đáp án
        foreach ($request->LaDapAnDung as $idDapAn => $value) {
            $dapAn = DapAn::findOrFail($idDapAn);
            $dapAn->LaDapAnDung = $value;
            $dapAn->save();
        }


        return redirect()->route('admincauhoi', ['id' => $cauHoi->IDChuDe])->with('success', 'Cập nhật câu hỏi và đáp án thành công.');
    }

    public function updateCauHoi(Request $request)
    {
        // Validate dữ liệu được gửi từ form
        $validatedData = $request->validate([
            'IDCauHoi' => 'required|integer',
            'noidung' => 'required',
            // Thêm các quy tắc validate cho các đáp án nếu cần
        ]);

        // Lấy ID của câu hỏi cần cập nhật từ request
        $idCauHoi = $request->input('IDCauHoi');

        // Tìm câu hỏi trong database
        $cauHoi = CauHoi::find($idCauHoi);

        // Kiểm tra xem câu hỏi có tồn tại không
        if (!$cauHoi) {
            return back()->with('error', 'Không tìm thấy câu hỏi');
        }

        // Cập nhật thông tin câu hỏi
        $cauHoi->NoiDungCauHoi = $request->input('noidung');
        // Cập nhật thông tin các đáp án tương ứng
        // Ví dụ:
        $cauHoi->dapAns->first()->NoiDungDapAn = $request->input('dap_an_1');
        // Cập nhật các đáp án khác tương tự

        // Lưu các thay đổi
        $cauHoi->save();

        // Chuyển hướng về trang hiển thị câu hỏi với thông báo cập nhật thành công
        return redirect()->route('diendan')->with('success', 'Cập nhật câu hỏi và đáp án thành công');
    }
    public function delete($id)
    {
        DapAn::where('IDCauHoi', $id)->delete();
        

        // Tìm câu hỏi cần xóa
        $cauHoi = CauHoi::findOrFail($id);
        // Xóa câu hỏi
        $cauHoi->delete();

        // (Tuỳ chọn) Cập nhật logic xóa đáp án liên quan nếu cần

        // Chuyển hướng hoặc trả về JSON tùy thuộc vào yêu cầu của bạn
        return redirect()->back()->with('success', 'Xóa câu hỏi thành công');
    }

    public function hienThiDanhSachNguoiDung()
{
    // Lấy danh sách người dùng từ bảng người dùng
    $nguoiDungs = User::all();
    
    // Trả về view với dữ liệu người dùng
    return view('danhsachnguoidung', ['nguoiDungs' => $nguoiDungs]);
}

    public function thongkeadmin()
    {
        // Lấy ID của người dùng đã đăng nhập
        $userId = Auth::id();

        // Lấy danh sách các phiên của người dùng
        $phienKetQuas = KetQua::whereHas('phien', function ($query) use ($userId) {
            $query->where('IDNguoiDung', $userId);
        })->get();

        $user = User::Find('id', $userId)->get();

        return view('/', compact('phienKetQuas', 'user'));
    }

    public function thongke()
    {
        // Lấy ID của người dùng đã đăng nhập
        $phienKetQuas = DB::table('phien')
        ->leftJoin('users', 'users.id', '=', 'phien.IDNguoiDung')
        ->leftJoin('ketqua', 'phien.IDPhien', '=', 'ketqua.IDPhien')
        ->get();
        return view('/adminthongke', compact('phienKetQuas'));
    }

}
