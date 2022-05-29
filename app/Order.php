<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{

    public $timestamps =false;
    protected $fillable = ['user_id', 'accept','order_name','cont','price','imageURL','date','exp'];
    public function user()
    {
        return $this->belongs('App\User');
    }
}


