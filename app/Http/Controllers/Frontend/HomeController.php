<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Palabra;

class HomeController extends Controller
{
    public function index()
    {
        $palabras = Palabra::where('estado', 1)
            ->with(['media', 'categoria'])
            ->latest()
            ->paginate(12);

        return view('frontend.home', compact('palabras'));
    }
}
