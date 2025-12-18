@extends('brackets/admin-ui::admin.layout.default')

@section('title', 'Ver palabra')

@section('body')

<div class="container-xl">

    <div class="card shadow-sm">

        {{-- Header --}}
        <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="mb-0">
                👁 Palabra: <strong>{{ $palabra->nombre }}</strong>
            </h5>

            <a href="{{ url('admin/palabras') }}" class="btn btn-sm btn-secondary">
                ← Volver
            </a>
        </div>

        <div class="card-body">

            {{-- VIDEO --}}
            @php
                $media = $palabra->getFirstMedia('video');
            @endphp

            @if($media)
                <div class="mb-4">
                    <div class="ratio ratio-16x9 rounded overflow-hidden shadow-sm bg-dark">
                        <video
                            controls
                            preload="metadata"
                            playsinline
                            style="width:100%; height:100%; background:#000;"
                        >
                            <source src="{{ $media->getUrl() }}" type="{{ $media->mime_type }}">
                            Tu navegador no soporta reproducción de video.
                        </video>
                    </div>
                </div>
            @endif

            {{-- INFO --}}
            <div class="row g-4">

                <div class="col-md-6">
                    <div class="border rounded p-3 h-100">
                        <h6 class="text-muted">Información</h6>

                        <p class="mb-1"><strong>Nombre:</strong><br>{{ $palabra->nombre }}</p>
                        <p class="mb-1"><strong>Slug:</strong><br>{{ $palabra->slug }}</p>
                        <p class="mb-1"><strong>Categoría:</strong><br>
                            {{ optional($palabra->categoria)->nombre ?? '—' }}
                        </p>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="border rounded p-3 h-100">
                        <h6 class="text-muted">Estado</h6>

                        @if($palabra->estado)
                            <span class="badge badge-success">Activo</span>
                        @else
                            <span class="badge badge-danger">Inactivo</span>
                        @endif
                    </div>
                </div>

            </div>

            {{-- DESCRIPCIÓN --}}
            @if($palabra->descripcion)
                <div class="mt-4">
                    <h6 class="text-muted">Descripción</h6>
                    <div class="border rounded p-3">
                        {{ $palabra->descripcion }}
                    </div>
                </div>
            @endif

        </div>
    </div>

</div>

@endsection
