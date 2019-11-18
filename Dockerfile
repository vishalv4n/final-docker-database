FROM 200.0.1.100:5000/mysql5.7 
ENV MYSQL_ROOT_PASSWORD=manager
ENV MYSQL_DATABASE=app_db
COPY  queries.sql /docker-entrypoint-initdb.d
EXPOSE 3306
