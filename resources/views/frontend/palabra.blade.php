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

    {{-- Custom styles --}}
    <link rel="stylesheet" href="{{ asset('css/palabra.css') }}">

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
                <i class="bi bi-backspace"></i>
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
        <section class="video-hero">
            @php
                $video = $palabra->getMedia('video')->first();
            @endphp

            @if ($video)
                <div class="video-wrapper">

                    <div class="video-frame"></div>

                    {{-- CATEGORIA SOBRE EL VIDEO --}}
                    @if ($palabra->categoria)
                        <span class="video-badge">
                            {{ $palabra->categoria->nombre }}
                        </span>
                    @endif

                    {{-- VIDEO --}}
                    <video
                        controls
                        playsinline
                        preload="metadata"
                    >
                        <source src="{{ $video->getUrl() }}" type="video/mp4">
                    </video>

                </div>
            @endif
        </section>


        {{-- INFO --}}
        <section class="info-section">
            <div class="info-card">

                @if ($palabra->categoria)
                    <span class="badge bg-primary mb-3">
                        {{ $palabra->categoria->nombre }}
                    </span>
                @endif

                <h1 class="mb-2">
                    {{ $palabra->nombre }}
                </h1>

                @if ($palabra->descripcion)
                    <p class="text-body-secondary mb-4">
                        {{ $palabra->descripcion }}
                    </p>
                @else
                    <p class="text-body-secondary fst-italic mb-4">
                        No hay descripción disponible para esta seña.
                    </p>
                @endif

                <hr>

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
        </section>

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
