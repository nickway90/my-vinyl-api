# My Vinyl API

This is the API component for a simple application that can manage a user's record collection.

## [Live Demo](https://api.myvinyl.rocks)

This application has been built off of the following technologies.

- [Rails](https://rubyonrails.org/) as the application framework.

- [RSpec](http://rspec.info/) for testing.

- [Docker](https://www.docker.com/) for deployment.

- [PostgreSQL](https://www.postgresql.org/) as the database.

- [Nginx](https://www.nginx.com/) as a reverse proxy web server.

- [AWS](https://aws.amazon.com/) for hosting.

## Development Dependencies

Since all application dependencies are virtualized through [Docker](https://www.docker.com/get-started) containers, all you need to have is [Docker](https://www.docker.com/get-started) to get started!

## Installation
```
$ git clone https://github.com/nickway90/my-vinyl-api.git
$ cd my-vinyl-api
$ cp .env-example .env
$ docker-compose up
```

Navigate to `http://localhost:8080` and see your API working!

## Documentation

Documentation is done through [rswag](https://github.com/domaindrivendev/rswag)

To generate Swagger docs run `$ rake rswag:specs:swaggerize`
