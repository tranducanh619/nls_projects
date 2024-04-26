<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChuDeChinh extends Model
{
    use HasFactory;
    protected $table = 'chudechinh'; // Tên của bảng chủ đề chính

    protected $primaryKey = 'IDChuDeChinh'; // Khóa chính của bảng chủ đề chính

    public function chudes()
    {
        return $this->hasMany(ChuDe::class, 'IDChuDeChinh'); // Thiết lập mối quan hệ một-nhiều với bảng chủ đề thông qua khóa ngoại 'IDChuDeChinh'
    }
}
