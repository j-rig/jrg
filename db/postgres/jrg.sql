
CREATE DATABASE jrg;

-- Create a read-write user with a password
CREATE USER rwuser WITH PASSWORD 'rwpass';

-- Grant all privileges on the new database to the read-write user
GRANT ALL PRIVILEGES ON DATABASE jrg TO rwuser;

-- Create a read-only user with a password
CREATE USER rouser WITH PASSWORD 'ropass';

-- Grant the read-only user permission to connect to the database
GRANT CONNECT ON DATABASE jrg TO rouser;

-- Grant read-only access (SELECT) on all existing tables in the public schema
GRANT SELECT ON ALL TABLES IN SCHEMA public TO rouser;

-- Ensure that any future tables will have the SELECT privilege automatically granted to the read-only user
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO rouser;