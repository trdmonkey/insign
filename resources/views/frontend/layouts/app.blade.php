<!doctype html>
<html lang="es" data-bs-theme="light">
<head>
    <meta charset="utf-8">
    <title>@yield('title', 'InSign')</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    {{-- Bootstrap --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    {{-- Icons --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>

<body class="bg-body">

{{-- HEADER GLOBAL --}}
<header class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between align-items-center">

        <a href="/" class="navbar-brand">
            <img src="{{ asset('images/insign-logo.svg') }}" style="width:140px">
        </a>

        <div class="d-flex gap-2">
            <button class="btn btn-outline-light" id="themeToggle">
                <i class="bi bi-moon-stars"></i>
            </button>
        </div>

    </div>
</header>

{{-- CONTENIDO --}}
<main class="py-4">
    @yield('content')
</main>

{{-- FOOTER GLOBAL --}}
<footer class="border-top py-4 text-center text-body-secondary">
    InSign © {{ date('Y') }} — Plataforma educativa
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
    const html = document.documentElement;
    const toggle = document.getElementById('themeToggle');

    const savedTheme = localStorage.getItem('theme');
    if (savedTheme) {
        html.setAttribute('data-bs-theme', savedTheme);
    }

    toggle.addEventListener('click', () => {
        const theme = html.getAttribute('data-bs-theme') === 'dark' ? 'light' : 'dark';
        html.setAttribute('data-bs-theme', theme);
        localStorage.setItem('theme', theme);
    });
</script>

</body>
</html>
