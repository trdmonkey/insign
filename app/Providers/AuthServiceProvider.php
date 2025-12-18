<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
// use Illuminate\Support\Facades\URL;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        $this->registerPolicies();

        /*
        |--------------------------------------------------------------------------
        | PALABRA - PERMISOS ADMIN (CRAFTABLE)
        |--------------------------------------------------------------------------
        */

        Gate::define('admin.palabra.index', function ($user) {
            return $user->hasPermissionTo('admin.palabra.index');
        });

        Gate::define('admin.palabra.create', function ($user) {
            return $user->hasPermissionTo('admin.palabra.create');
        });

        Gate::define('admin.palabra.edit', function ($user) {
            return $user->hasPermissionTo('admin.palabra.edit');
        });

        Gate::define('admin.palabra.delete', function ($user) {
            return $user->hasPermissionTo('admin.palabra.delete');
        });

        Gate::define('admin.palabra.show', function ($user) {
            return $user->hasPermissionTo('admin.palabra.show');
        });

        // Esto obliga a Laravel a generar links con https
        // if (env('APP_ENV') !== 'local' || str_contains(request()->header('Host'), 'trycloudflare.com')) {
        //     URL::forceScheme('https');
        // }
    }
}
