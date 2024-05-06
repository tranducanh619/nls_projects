<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DapAn extends Model
{
    use HasFactory;
    protected $table = 'dapan'; // Tên bảng
    protected $primaryKey = 'IDDapAn';
    public $timestamps = false;
    protected $fillable = [
        'IDCauHoi', 'NoiDungDapAn', 'LaDapAnDung'
    ];
    public function cauHoi()
    {
        return $this->belongsTo(CauHoi::class, 'IDCauHoi');
    }
}
