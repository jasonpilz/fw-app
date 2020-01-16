# Docker Rails

> Bootstrapped Rails application running in docker

## Versions

* Ruby 2.6.3
* Rails 6.0.2
* Postgresql 9.6

## Usage

Run`bin/start` from the root directory. This will cause the following actions:
1. Bring up the postgres database.
2. Build the application docker image.
3. Create the default databases for development and test.
4. Launch the rails app/server.

Visiting `localhost:3000` should give you the default Rails landing page

## Prerequisites

* [Docker](https://www.docker.com/) running locally.
