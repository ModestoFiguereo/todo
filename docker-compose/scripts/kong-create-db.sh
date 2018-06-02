psql -h 'postgres' -U me postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'kong'" | grep -q 1 || psql -h 'postgres' -U me postgres -c "CREATE DATABASE kong";
