<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KetQua extends Model
{
    use HasFactory;
    protected $table = 'ketqua';
    protected $primaryKey = 'IDKetQua';
    public $timestamps = false;

    protected $fillable = [
        'IDPhien', 'Diem' // Add 'IDNguoiDung' to the fillable attributes
    ];

    public function phien()
    {
        return $this->belongsTo(Phien::class, 'IDPhien');
    }
}
