#!/usr/bin/env bash
set -e

echo "⚙️  Starting MySQL..."
sudo service mysql start

# ----- OPTIONAL: automatically create DB and import dump -----
DB_NAME=agri_rental
MYSQL_PWD=""          # root has no password in fresh MySQL images

echo "📦  Creating database '$DB_NAME' (if not exists)…"
mysql -uroot -e "CREATE DATABASE IF NOT EXISTS $DB_NAME /*\!40100 DEFAULT CHARACTER SET utf8 */;"

# If you have a dump file, import it
if [ -f "./schema.sql" ]; then
  echo "📥  Importing schema.sql into $DB_NAME…"
  mysql -uroot $DB_NAME < ./schema.sql
fi

echo "✅  MySQL ready. You can connect on localhost with user 'root' and no password."
