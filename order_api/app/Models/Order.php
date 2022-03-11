<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model 
{
    protected $table = 'ordermst';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    public $timestamps = false;
    
    protected $primaryKey = 'idtab';

    public $incrementing = false;
}
