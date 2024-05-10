<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    use HasFactory;
    protected $table = 'likes';
    protected $primaryKey = 'IDLike';
    public $timestamps = false; // Không sử dụng các cột timestamps

    // Khai báo quan hệ với bài viết
    public function baiViet()
    {
        return $this->belongsTo(BaiViet::class, 'IDBaiViet', 'IDBaiViet');
    }

    // Khai báo quan hệ với người dùng
    public function nguoiDung()
    {
        return $this->belongsTo(User::class, 'IDNguoiDung', 'id');
    }

    // Khai báo quan hệ với bình luận
    public function binhLuan()
    {
        return $this->belongsTo(BinhLuan::class, 'IDBinhLuan', 'IDBinhLuan');
    }
}
