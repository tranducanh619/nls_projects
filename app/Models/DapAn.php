<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DapAn extends Model
{
    use HasFactory;
    protected $table = 'dapan'; // Tên bảng
    protected $primaryKey = 'IDDapAn';


    public function cauHoi()
    {
        return $this->belongsTo(CauHoi::class, 'IDCauHoi');
    }
}
