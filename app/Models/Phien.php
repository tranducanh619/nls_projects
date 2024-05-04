<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Phien extends Model
{
    use HasFactory;
    protected $table = 'phien';
    protected $primaryKey = 'IDPhien';
    public $timestamps = false;

    protected $fillable = [
        'IDNguoiDung', 'NgayGioBatDau', 'NgayGioKetThuc'
    ];

    protected $casts = [
        'NgayGioBatDau' => 'datetime',
        'NgayGioKetThuc' => 'datetime'
    ];

    public function nguoiDung()
    {
        return $this->belongsTo(User::class, 'IDNguoiDung');
    }
}
