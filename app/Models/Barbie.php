<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barbie extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'hair_color',
        'eye_color',
        'length',
        'country_id',
        'price',
    ];

    // 1 barbika moze vise puta biti izabrana za favorita
    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }

    //1 barbika pripada 1oj zemlji
    public function country()
    {
        return $this->belongsTo(Country::class);
    }
}
