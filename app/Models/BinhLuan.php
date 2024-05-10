<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BinhLuan extends Model
{
    use HasFactory;
    protected $table = 'binhluan';
    protected $primaryKey = 'IDBinhLuan';
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
}
