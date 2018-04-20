<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Form_Model extends Model
{
    protected $table='form_';
    public $timestamps=false;
    protected $fillable = ['name','conten','email'];
}