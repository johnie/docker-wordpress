FROM mariadb
MAINTAINER Johnie Hjelm <johnie.hjelm@cloudnine.se>

# Add .sql scripts
ADD sql/ /docker-entrypoint-initdb.d/
