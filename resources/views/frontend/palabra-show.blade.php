@extends('frontend.layouts.app')

@section('title', $palabra->nombre . ' | InSign')

@section('content')

<div class="container py-5">

    <div class="row g-4">

        <div class="col-md-7">
            <div class="ratio ratio-16x9 rounded overflow-hidden shadow-sm bg-dark">
                @php $media = $palabra->getFirstMedia('video'); @endphp

                @if($media)
                    <video controls>
                        <source src="{{ $media->getUrl() }}" type="{{ $media->mime_type }}">
                    </video>
                @endif
            </div>
        </div>

        <div class="col-md-5">
            <h2 class="fw-light">{{ $palabra->nombre }}</h2>

            <p class="text-body-secondary">
                {{ $palabra->descripcion }}
            </p>

            <p class="small">
                <i class="bi bi-folder"></i>
                {{ optional($palabra->categoria)->nombre }}
            </p>

            <a href="{{ url('/') }}" class="btn btn-outline-secondary btn-sm">
                <i class="bi bi-arrow-left"></i> Volver
            </a>
        </div>

    </div>

</div>

@endsection
