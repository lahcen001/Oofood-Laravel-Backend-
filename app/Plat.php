<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plat extends Model
{
    public $timestamps =false;
    protected $fillable = ['category_id','name','cont' ,'price', 'imageURL', 'quantity' , 'is_added'];
    public function category()
    {

        return $this->belongsTo('App\Category');

    }
}
