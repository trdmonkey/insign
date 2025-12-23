<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>@yield('title', 'InSign')</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-light bg-white border-bottom">
    <div class="container">
        <a class="navbar-brand fw-bold" href="/">
            InSign
        </a>

        <div class="ms-auto">
            <a href="{{ url('/admin') }}" class="btn btn-outline-primary btn-sm">
                Admin
            </a>
        </div>
    </div>
</nav>

<main class="py-5">
    @yield('content')
</main>

<footer class="text-center text-muted py-4 small">
    InSign © {{ date('Y') }} — Plataforma educativa
</footer>

</body>
</html>
