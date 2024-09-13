FROM postgres:15

ENV POSTGRES_PASSWORD your_password

COPY ./init_db.sql /docker-entrypoint-initdb.d/