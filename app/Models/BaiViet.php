<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    protected $table = 'likes';
    protected $primaryKey = 'IDLike';
    public $timestamps = false;

    public function baiViet()
    {
        return $this->belongsTo('App\Models\BaiViet', 'IDBaiViet');
    }

    public function nguoiDung()
    {
        return $this->belongsTo('App\Models\NguoiDung', 'IDNguoiDung');
    }

    public function binhLuan()
    {
        return $this->belongsTo('App\Models\BinhLuan', 'IDBinhLuan');
    }
}

class File extends Model
{
    protected $table = 'file';
    protected $primaryKey = 'IDFile';
    public $timestamps = false;

    public function baiViet()
    {
        return $this->belongsTo('App\Models\BaiViet', 'IDBaiViet');
    }
}

class BaiViet extends Model
{
    protected $table = 'baiviet';
    protected $primaryKey = 'IDBaiViet';
    public $timestamps = false;
    protected $fillable = [
        'IDNguoiDung', 'IDChuDe', 'TieuDe', 'NoiDung', 'SoLuotLike'
    ];
    public function nguoiDung()
    {
        return $this->belongsTo('App\Models\NguoiDung', 'IDNguoiDung');
    }

    public function chuDe()
    {
        return $this->belongsTo('App\Models\ChuDe', 'IDChuDe');
    }

    public function likes()
    {
        return $this->hasMany('App\Models\Like', 'IDBaiViet');
    }

    public function binhLuans()
    {
        return $this->hasMany('App\Models\BinhLuan', 'IDBaiViet');
    }

    public function files()
    {
        return $this->hasMany('App\Models\File', 'IDBaiViet');
    }
}

class BinhLuan extends Model
{
    protected $table = 'binhluan';
    protected $primaryKey = 'IDBinhLuan';
    public $timestamps = false;

    public function baiViet()
    {
        return $this->belongsTo('App\Models\BaiViet', 'IDBaiViet');
    }

    public function nguoiDung()
    {
        return $this->belongsTo('App\Models\NguoiDung', 'IDNguoiDung');
    }
}
