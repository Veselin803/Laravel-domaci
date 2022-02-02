<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;

    //kolone iz tabele u bazi
    protected $fillable = [
        'user_id',
        'barbie_id',
    ];

    // jedan favorit moze biti vezan samo za 1 usera
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // jedan favorit moze biti vezan samo za 1 barbiku
    public function barbie()
    {
        return $this->belongsTo(Barbie::class);
    }
}
