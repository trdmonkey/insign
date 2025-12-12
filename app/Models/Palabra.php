<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Palabra extends Model implements HasMedia
{
    use InteractsWithMedia;

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

    /**
     * Register media collections (Spatie Media Library)
     */
    public function registerMediaCollections(): void
    {
        $this->addMediaCollection('videos')
            ->useDisk('public') // opcional, ajusta si usas otro disk
            ->acceptsMimeTypes(['video/mp4', 'video/webm'])
            ->singleFile(); // si solo quieres un video por palabra
    }

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/palabras/' . $this->getKey());
    }
}
