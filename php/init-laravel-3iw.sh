#!/bin/sh
set -e

cd /var/www/html

# 1) Composer install (on ignore les erreurs pour ce TP)
composer install || true

# 2) NPM (on ignore les erreurs aussi)
if [ -f package.json ]; then
    npm install || true
    npm run build || true
fi

# 3) Artisan (on ignore les erreurs pour éviter que le conteneur s'arrête)
php artisan key:generate || true
php artisan migrate:fresh --seed || true

# 4) On lance php-fpm pour garder le conteneur vivant
php-fpm
