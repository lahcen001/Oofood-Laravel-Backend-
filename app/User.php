<?php



// namespace App;

// use Illuminate\Database\Eloquent\Model;
// use Illuminate\Notifications\Notifiable;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
// use Illuminate\Foundation\Auth\User as Authenticatable;
// use Tymon\JWTAuth\Contracts\JWTSubject;

// class User extends \TCG\Voyager\Models\User implements JWTSubject
// {

//     use Notifiable;
//     public function orders()
//     {

//         return $this->hasMany('App\Order');
//     }
//     /**
//      * The attributes that are mass assignable.
//      *
//      *
//      * @var array
//      */
//     protected $fillable = [
//         'name', 'email', 'password',
//     ];

//     /**
//      * The attributes that should be hidden for arrays.
//      *
//      * @var array
//      */
//     protected $hidden = [
//         'password', 'remember_token',
//     ];

//     public function getJWTIdentifier()
//     {
//         return $this->getKey();
//     }
//     public function getJWTCustomClaims()
//     {
//         return [];
//     }
// }





namespace App;



use Illuminate\Contracts\Auth\MustVerifyEmail;

use Illuminate\Notifications\Notifiable;

use Illuminate\Database\Eloquent\Model;

use Laravel\Passport\HasApiTokens;


class User extends \TCG\Voyager\Models\User
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public function orders()

     {

            return $this->hasMany('App\Order');
     }
     public function reservations()

     {

            return $this->hasOne('App\Reservation');
     }

    protected $fillable = [
        'name', 'email', 'password', 'ville', 'phone', 'adresse',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



}
