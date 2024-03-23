GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;

\connect mydb

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL
);

-- Granting permissions to 'myuser' on the 'users' table
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO myuser;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO myuser;

-- Inserting sample data into 'users' table
INSERT INTO users (name, email) VALUES ('Alice Smith', 'alice@example.com');
INSERT INTO users (name, email) VALUES ('Bob Jones', 'bob@example.com');
INSERT INTO users (name, email) VALUES ('Charlie Brown', 'charlie@example.com');
INSERT INTO users (name, email) VALUES ('Diana Prince', 'diana@example.com');
INSERT INTO users (name, email) VALUES ('Ethan Hunt', 'ethan@example.com');
INSERT INTO users (name, email) VALUES ('Fiona Gallagher', 'fiona@example.com');
INSERT INTO users (name, email) VALUES ('George Bluth', 'george@example.com');
INSERT INTO users (name, email) VALUES ('Hannah Baker', 'hannah@example.com');
INSERT INTO users (name, email) VALUES ('Ivan Petrov', 'ivan@example.com');
INSERT INTO users (name, email) VALUES ('Julia Chen', 'julia@example.com');
INSERT INTO users (name, email) VALUES ('Kevin Malone', 'kevin@example.com');
INSERT INTO users (name, email) VALUES ('Linda Belcher', 'linda@example.com');
INSERT INTO users (name, email) VALUES ('Mike Wheeler', 'mike@example.com');
INSERT INTO users (name, email) VALUES ('Nancy Wheeler', 'nancy@example.com');
INSERT INTO users (name, email) VALUES ('Oliver Queen', 'oliver@example.com');
INSERT INTO users (name, email) VALUES ('Pam Beesly', 'pam@example.com');