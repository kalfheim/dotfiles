<?php

$test = (object)[
    'laravel' => file_exists(getcwd().'/artisan'),
    'composer' => file_exists(getcwd().'/composer.json'),
    'composerInstalled' => file_exists(getcwd().'/vendor/autoload.php'),
];

if ($test->composer && ! $test->composerInstalled) {
    return [
        'startupMessage' => '<warning>composer.json is detected, but has not been installed</warning>',
    ];
}

if ($test->laravel) {
    // Alias Eloquent models for easy access.
    // @see https://gist.github.com/calebporzio/cdf70bd390688646fda65490006eb0a6

    $finder = (new Symfony\Component\Finder\Finder)->files()->name('*.php')->in(base_path().'/app');

    foreach ($finder as $file) {
        $namespace = app()->getNamespace();

        if ($relativePath = $file->getRelativePath()) {
            $namespace .= strtr($relativePath, '/', '\\') . '\\';
        }

        $class = $namespace . $file->getBasename('.php');

        try {
            $r = new ReflectionClass($class);

            if ($r->isSubclassOf('Illuminate\\Database\\Eloquent\\Model')) {
                class_alias($class, $file->getBasename('.php'));
            }
        } catch (Exception $e) {
            //
        }
    }

    DB::listen(function (Illuminate\Database\Events\QueryExecuted $query) {
        printf("[%s] %s\n", $query->connectionName, $query->sql);
    });
}

return [
    'eraseDuplicates' => true,
];
