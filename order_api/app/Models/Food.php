<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Food extends Model 
{
    protected $table = 'master_barang';

    public $timestamps = false;
    
    protected $primaryKey = 'idtab';

    public $incrementing = false;
}
