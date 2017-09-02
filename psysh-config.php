<?php

$is = (object)[
    'laravel' => file_exists(getcwd().'/artisan'),
    'composer' => file_exists(getcwd().'/composer.json'),
    'composerInstalled' => file_exists(getcwd().'/vendor/autoload.php'),
];

if ($is->composer && ! $is->composerInstalled) {
    return [
        'startupMessage' => '<warning>composer.json is detected, but has not been installed</warning>',
    ];
}

if ($is->laravel) {
    // Print SQL queries made by the query builder (including Eloquent)
    DB::listen(function (Illuminate\Database\Events\QueryExecuted $query) {
        printf("[%s] %s\n", $query->connectionName, $query->sql);
    });
}

return [
    'eraseDuplicates' => true,
];
