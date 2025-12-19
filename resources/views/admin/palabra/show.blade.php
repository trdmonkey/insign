@extends('brackets/admin-ui::admin.layout.default')

@section('title', 'Ver palabra')

@section('body')

<div class="container-xl">

    <div class="card shadow-sm">

        {{-- Header --}}
        <div class="card-header d-flex justify-content-between align-items-center bg-white">
            <div>
                <h5 class="mb-0">
                    👁️ Detalle de la palabra
                </h5>
                <small class="text-muted">
                    {{ $palabra->nombre }}
                </small>
            </div>

            <a href="{{ url('admin/palabras') }}" class="btn btn-sm btn-primary">
                ↻ Volver
            </a>
        </div>

        <div class="card-body">

            {{-- VIDEO --}}
            @php
                $media = $palabra->getFirstMedia('video');
            @endphp

            <div class="mb-4">
                <h6 class="text-muted mb-2">Video en Lengua de Señas</h6>

                @if($media)
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
                @else
                    <div class="border rounded p-4 text-center text-muted bg-light">
                        📹 No hay video asociado a esta palabra
                    </div>
                @endif
            </div>

            {{-- INFO --}}
            <div class="row g-4">

                <div class="col-md-8">
                    <div class="border rounded p-3 h-100">
                        <h6 class="text-muted mb-3">Información general</h6>

                        <dl class="mb-0">
                            <dt>Nombre</dt>
                            <dd>{{ $palabra->nombre }}</dd>

                            <dt>Slug</dt>
                            <dd><code>{{ $palabra->slug }}</code></dd>

                            <dt>Categoría</dt>
                            <dd>{{ optional($palabra->categoria)->nombre ?? '—' }}</dd>
                        </dl>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="border rounded p-3 h-100 text-center">
                        <h6 class="text-muted mb-3">Estado</h6>

                        @if($palabra->estado)
                            <span class="badge badge-success px-3 py-2">
                                ✔ Activo
                            </span>
                        @else
                            <span class="badge badge-danger px-3 py-2">
                                ✘ Inactivo
                            </span>
                        @endif
                    </div>
                </div>

            </div>

            {{-- DESCRIPCIÓN --}}
            @if($palabra->descripcion)
                <div class="mt-4">
                    <h6 class="text-muted mb-2">Descripción</h6>
                    <div class="border rounded p-3 bg-light">
                        {{ $palabra->descripcion }}
                    </div>
                </div>
            @endif

        </div>
    </div>

</div>

@endsection
