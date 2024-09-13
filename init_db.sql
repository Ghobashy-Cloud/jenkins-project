-- Create a new user
CREATE USER myuser WITH PASSWORD 'mypassword';

-- Create a database
CREATE DATABASE mydatabase OWNER myuser;

-- Grant privileges to the user
GRANT ALL PRIVILEGES ON mydatabase TO myuser;