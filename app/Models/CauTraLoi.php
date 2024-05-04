<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CauTraLoi extends Model
{
    use HasFactory;

    protected $table = 'cautraloi';
    protected $primaryKey = 'IDLuaChon';
    public $timestamps = false;

    protected $fillable = [
        'IDPhien', 'IDCauHoi', 'IDDapAnChon'
    ];

    public function phien()
    {
        return $this->belongsTo(Phien::class, 'IDPhien');
    }

    public function cauHoi()
    {
        return $this->belongsTo(CauHoi::class, 'IDCauHoi');
    }

    public function dapAn()
    {
        return $this->belongsTo(DapAn::class, 'IDDapAnChon');
    }
}
