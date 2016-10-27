# Wordpress template project using Docker

Virtual development environment for **Wordpress** using Docker. This project runs on:

- PHP 7
- MariaDB, latest version
- Wordpress 4.6.1

## Dependencies

Please, download and install the following dependencies to setup the development environment:

### Environment setup

* Docker (https://www.docker.com/)

### Development tools

* Composer [https://getcomposer.org/](https://getcomposer.org/)
* WP-CLI [http://wp-cli.org/](http://wp-cli.org/)

## Setup

After all the dependencias are installed, follow the setup process below:

### /etc/hosts

1. Edit the file `server_name.env`.
2. Then change the variable `SERVER_NAME` to the domain you want.


## Usage

* Clone the project repository.
* Go the repository folder and enter the command `docker-compose up -d`.
* The website source can be found in the folder `www/`.
* The website will be accessible throught the URL `http://wordpress.dev` or the specified url in the file `servername.env`. (Don't forget to update your `/etc/hosts`-file)
* The website database (MariaDB) will be accessible through the linked images network / the `MARIADB_PORT_3306_TCP_ADDR` variable.
* Enter the command `docker-compose down` in the repository folder when you want to stop the virtual server.

## Credentials

## Credentials

<table>
  <tr>
    <th>Environment</th>
    <th>Credentials</th>
  </tr>
  <tr>
    <td>Wordpress Admin</td>
    <td>Username: <tt>admin</tt>, Password: <tt>admin</tt></td>
  </tr>
  <tr>
    <td>Database</td>
    <td>Username: <tt>root</tt>, Password: <tt>root</tt></td>
  </tr>
</table>

## Authors

Authors: 

- Johnie Hjelm (johnie.hjelm@cloudnine.se)
