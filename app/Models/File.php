<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;
    protected $table = 'file';
    protected $primaryKey = 'IDFile';
    public $timestamps = false; // Không sử dụng các cột timestamps

    // Khai báo quan hệ với bài viết
    public function baiViet()
    {
        return $this->belongsTo(BaiViet::class, 'IDBaiViet', 'IDBaiViet');
    }
}
