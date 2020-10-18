<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{

    
    protected $fillable = [
        'id_user',
        'phone',
        'ville',
        'adresse',
    

    ];


    public function users()
    {
        return $this->belongsTo('App\User');
    }
}
