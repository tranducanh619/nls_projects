<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
class CauHoi extends Model
{
    use HasFactory;
    protected $table = 'cauhoi'; // Tên của bảng chứa dữ liệu câu hỏi
    protected $primaryKey = 'IDCauHoi';
    public $timestamps = false;
    protected $fillable = [
        'IDChuDe', 'NoiDungCauHoi', 'anhmh'
    ];
    public function dapAns()
    {
        return $this->hasMany(DapAn::class, 'IDCauHoi');
    }
    
    public function chuDe()
    {
        return $this->belongsTo(ChuDe::class, 'IDChuDe');
    }
}