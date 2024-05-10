<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BaiViet extends Model
{
    use HasFactory;
    protected $table = 'baiviet';
    protected $primaryKey = 'IDBaiViet';
    public $timestamps = false;
    protected $fillable = [
        'IDNguoiDung', 'IDChuDe', 'TieuDe', 'NoiDung', 'SoLuotLike'
    ];
    public function nguoiDung()
    {
        return $this->belongsTo(User::class, 'IDNguoiDung');
    }

    public function chuDe()
    {
        return $this->belongsTo(ChuDeBaiViet::class, 'IDChuDe');
    }

    public function likes()
    {
        return $this->hasMany(Like::class, 'IDBaiViet');
    }

    public function binhLuans()
    {
        return $this->hasMany(BinhLuan::class, 'IDBaiViet');
    }

    public function files()
    {
        return $this->hasMany(File::class, 'IDBaiViet');
    }
}