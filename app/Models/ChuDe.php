<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChuDe extends Model
{
    use HasFactory;
    protected $table = 'chude'; // Tên của bảng chủ đề

    protected $primaryKey = 'IDChuDe'; // Khóa chính của bảng chủ đề

    // Các cột có thể được gán
    protected $fillable = ['TenChuDe'];

    // Mối quan hệ với bảng chủ đề chính
    public function chuDeChinh()
    {
        return $this->belongsTo(ChuDeChinh::class, 'IDChuDeChinh'); // Thiết lập mối quan hệ nhiều-một với bảng chủ đề chính qua khóa ngoại 'IDChuDeChinh'
    }
    public function cauHois()
    {
        return $this->hasMany(CauHoi::class, 'IDChuDe');
    }
}

