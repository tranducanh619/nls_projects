<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BaiViet;
use App\Models\ChuDeBaiViet; // Import model BaiViet
use Illuminate\Support\Facades\Auth;
use App\Models\Like;

class BaiVietController extends Controller
{
    //


    public function themBaiViet(Request $request)
    {
         // Validate dữ liệu được gửi từ form
         $request->validate([
            'tieude' => 'required',
            'noidung' => 'required',
            'IDChuDe' => 'required|integer', // Kiểm tra IDChuDe là số nguyên
        ]);

        // Tạo mới một bài viết từ dữ liệu được gửi từ form
        BaiViet::create([
            'IDNguoiDung' => auth()->user()->id, // Lấy ID của người dùng đăng nhập
            'IDChuDe' => $request->IDChuDe,
            'TieuDe' => $request->tieude,
            'NoiDung' => $request->noidung,
            'NgayDang' => now(), // Lấy ngày và giờ hiện tại
            'SoLuotLike' => 0, // Giá trị mặc định cho số lượt like
        ]);
        $baiViet = BaiViet::all();
        $chude = ChuDeBaiViet::all();
        $nguoiDung = Auth::user();
        return view('diendan', ['chude' => $chude, 'baiviet'=>$baiViet, 'nguoidung' => $nguoiDung]);
        
    }
    public function hienThiForm()
    {
        $chude = ChuDeBaiViet::all(); // Lấy danh sách các chủ đề
        // Lấy danh sách bài viết với tên chủ đề
        $baiViet = BaiViet::all();

        $nguoiDung = Auth::user();
        return view('diendan', ['chude' => $chude, 'baiviet'=>$baiViet, 'nguoidung' => $nguoiDung]);
    }

    public function update(Request $request)
    {
        
        // Validate dữ liệu được gửi từ form
        $request->validate([
            'IBBaiViet' => 'required',
            'IDChuDe' => 'required',
            'tieude' => 'required',
            'noidung' => 'required',
        ]);

        // Lấy ID của dữ liệu cần cập nhật từ request
        $id = $request->input('IBBaiViet');

        // Tìm dữ liệu trong database
        $data = BaiViet::find($id);

        // Kiểm tra xem dữ liệu có tồn tại không
        if (!$data) {
            return back()->with('error', 'Không tìm thấy dữ liệu');
        }

        // Cập nhật thông tin
        $data->IDChuDe = $request->input('IDChuDe');
        $data->TieuDe = $request->input('tieude');
        $data->NoiDung = $request->input('noidung');

        // Lưu dữ liệu đã cập nhật
        $data->save();

        // Chuyển hướng về trang hiển thị form diendan
        return redirect()->route('diendan')->with('success', 'Cập nhật thành công');
    }

    public function delete($id)
    {
        // Tìm bài viết cần xóa
        $baiViet = BaiViet::findOrFail($id);

        // Xóa bài viết
        $baiViet->delete();

        // Chuyển hướng người dùng về trang nào đó sau khi xóa thành công
        return redirect()->route('diendan')->with('success', 'Xóa bài viết thành công');
    }

    public function likePost($id)
    {
        

        // Kiểm tra xem bài viết đã được like chưa
        $alreadyLiked = Like::where('IDBaiViet', $id)
                            ->where('IDNguoiDung', auth()->id()) // Giả sử bạn có hệ thống xác thực người dùng
                            ->exists();

        if (!$alreadyLiked) {
            // Nếu chưa like, thêm một like mới
            $like = new Like();
            $like->IDBaiViet = $id;
            $like->IDNguoiDung = auth()->id(); // Giả sử bạn có hệ thống xác thực người dùng
            $like->save();

            // Cập nhật số lượt like của bài viết
            $post = BaiViet::findOrFail($id);
            $post->SoLuotLike += 1;
            $post->save();
        }
        // Trả về số lượt like mới của bài viết
        return redirect()->route('diendan')->with('success', 'like thành công');
    }

}
