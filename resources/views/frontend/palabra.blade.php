<!doctype html>
<html lang="es" data-bs-theme="auto">
<head>
    <meta charset="utf-8">
    <title>{{ $palabra->nombre }} – InSign</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    {{-- Bootstrap 5.3 --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    {{-- Bootstrap icons --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        video {
            width: 100%;
            background: #000;
            border-radius: 1rem;
        }
    </style>
</head>

<body class="bg-body">

{{-- HEADER --}}
<header class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between align-items-center">

        <a href="/" class="navbar-brand">
            <img src="{{ asset('images/insign-logo.svg') }}"
                 alt="InSign"
                 style="width:150px">
        </a>

        <div class="d-flex gap-2">

            {{-- Dark mode toggle --}}
            <button class="btn btn-outline-light"
                    id="themeToggle"
                    title="Modo oscuro">
                <i class="bi bi-moon-stars"></i>
            </button>

            <a href="/" class="btn btn-outline-light">
                <i class="bi bi-arrow-left"></i>
            </a>

        </div>
    </div>
</header>

{{-- MAIN --}}
<main class="py-4">

    <div class="container">
        <!-- <pre>
        {{ dump($palabra->media) }}
        </pre> -->
        
        {{-- VIDEO (PROTAGONISTA) --}}
        <div class="row justify-content-center mb-4">
            <div class="col-12 col-md-6">

                @php
                    $video = $palabra->getMedia('video')->first();
                @endphp

                @if ($video)
                    <div class="mb-4" style="max-width:420px;margin:auto">
                        <video
                            controls
                            playsinline
                            preload="metadata"
                            style="width:100%;border-radius:1rem;background:#000"
                        >
                            <source src="{{ $video->getUrl() }}" type="video/mp4">
                            Tu navegador no soporta video HTML5.
                        </video>
                    </div>
                @else
                    <div class="alert alert-warning text-center">
                        No hay video disponible para esta palabra.
                    </div>
                @endif

            </div>
        </div>

        {{-- INFO --}}
        <div class="row justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">

                <div class="card shadow-sm border-0">
                    <div class="card-body p-4">

                        {{-- CATEGORIA --}}
                        @if ($palabra->categoria)
                            <span class="badge bg-primary mb-3">
                                <i class="bi bi-tags"></i>
                                {{ $palabra->categoria->nombre }}
                            </span>
                        @endif

                        {{-- TITULO --}}
                        <h1 class="fw-light mb-3">
                            {{ $palabra->nombre }}
                        </h1>

                        {{-- DESCRIPCION --}}
                        @if ($palabra->descripcion)
                            <p class="text-body-secondary">
                                {{ $palabra->descripcion }}
                            </p>
                        @else
                            <p class="text-body-secondary fst-italic">
                                No hay descripción disponible para esta seña.
                            </p>
                        @endif

                        <hr>

                        {{-- META --}}
                        <div class="d-flex justify-content-between small text-body-secondary">
                            <span>
                                <i class="bi bi-calendar"></i>
                                {{ $palabra->created_at->format('d/m/Y') }}
                            </span>

                            <span>
                                <i class="bi bi-check-circle"></i>
                                Activo
                            </span>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </div>

</main>

{{-- FOOTER --}}
<footer class="py-4 mt-5 border-top text-center text-body-secondary">
    InSign © {{ date('Y') }} — Plataforma educativa
</footer>

{{-- Bootstrap --}}
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

{{-- Dark mode logic --}}
<script>
    const toggle = document.getElementById('themeToggle');
    toggle.addEventListener('click', () => {
        const html = document.documentElement;
        const current = html.getAttribute('data-bs-theme');
        html.setAttribute(
            'data-bs-theme',
            current === 'dark' ? 'light' : 'dark'
        );
    });
</script>

</body>
</html>
