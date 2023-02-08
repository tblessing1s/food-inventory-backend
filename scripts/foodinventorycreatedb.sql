CREATE DATABASE foodinventory;

CREATE USER foodinventoryadmin WITH PASSWORD 'password';
GRANT CONNECT, TEMPORARY ON DATABASE foodinventory TO foodinventoryadmin;
GRANT ALL PRIVILEGES ON DATABASE foodinventory TO foodinventoryadmin;