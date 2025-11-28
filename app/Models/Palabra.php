<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Palabra extends Model
{
    protected $table = 'palabra';

    protected $fillable = [
        'nombre',
        'slug',
        'descripcion',
        'estado',
        'link',
        'categoria_id',
    
    ];


    public function categoria()
    {
        return $this->belongsTo(Categorium::class);
    }
    
    
    protected $dates = [
        'created_at',
        'updated_at',
    
    ];
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/palabras/'.$this->getKey());
    }
}
