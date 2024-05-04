<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChuDeBaiViet extends Model
{
    use HasFactory;
    protected $table = 'chudebaiviet'; // Tên của bảng trong cơ sở dữ liệu
    protected $primaryKey = 'IDChuDeBaiViet'; // Tên của cột làm khóa chính
}
