<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Palabra;

class PalabraController extends Controller
{
    public function show($slug)
    {
        $palabra = Palabra::where('slug', $slug)
            ->with(['media', 'categoria'])
            ->firstOrFail();

        return view('frontend.palabra', compact('palabra'));
    }

}
