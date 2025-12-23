<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>InSign – Plataforma educativa</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    {{-- Bootstrap 5.3 --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        video {
            object-fit: cover;
            width: 100%;
            height: 225px;
        }
    </style>
</head>

<body>

{{-- HEADER --}}
<header class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between align-items-center">

        <a href="/" class="navbar-brand d-flex align-items-center">
            <img
                src="{{ asset('images/insign-logo.svg') }}"
                alt="InSign"
                style="width:160px;height:auto"
            >
        </a>

        <a href="{{ url('/admin') }}" class="btn btn-outline-light">
            Admin
        </a>

    </div>
</header>

{{-- MAIN --}}
<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-8 col-md-10 mx-auto">
                <h1 class="fw-light">InSign</h1>
                <p class="lead text-body-secondary">
                    Plataforma educativa para el aprendizaje del Lenguaje de Señas.
                </p>
            </div>
        </div>
    </section>

    <div class="album py-5 bg-body-tertiary">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

                @forelse ($palabras as $palabra)

                    <div class="col">
                        <div class="card shadow-sm h-100">

                            {{-- VIDEO --}}
                            @if ($palabra->media->first())
                                <video class="card-img-top" controls>
                                    <source
                                        src="{{ $palabra->media->first()->getUrl() }}"
                                        type="video/mp4"
                                    >
                                </video>
                            @else
                                <div class="bg-secondary text-white d-flex align-items-center justify-content-center"
                                     style="height:225px">
                                    Sin video
                                </div>
                            @endif

                            <div class="card-body d-flex flex-column">

                                <h5 class="card-title">
                                    {{ $palabra->nombre }}
                                </h5>

                                @if ($palabra->categoria)
                                    <span class="badge bg-primary mb-2 align-self-start">
                                        {{ $palabra->categoria->nombre }}
                                    </span>
                                @endif

                                <p class="card-text text-muted small mt-auto">
                                    Publicado {{ $palabra->created_at->diffForHumans() }}
                                </p>

                            </div>
                        </div>
                    </div>

                @empty

                    <div class="col-12 text-center">
                        <p class="text-muted">No hay palabras disponibles.</p>
                    </div>

                @endforelse

            </div>

            {{-- PAGINACIÓN --}}
            <div class="mt-4">
                {{ $palabras->links() }}
            </div>

        </div>
    </div>

</main>

{{-- FOOTER --}}
<footer class="text-body-secondary py-5">
    <div class="container">
        <p class="mb-1 text-center">
            InSign © {{ date('Y') }} — Plataforma educativa
        </p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
