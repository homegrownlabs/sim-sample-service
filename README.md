# Sample Service for Simulation Testing

A simple web service targetted by the generated simulant test suite.

This service exposes four endpoints:
- `GET /`        - Returns 200 with JSON body containing the current service
                   count.
- `GET /version` - Returns JSON describing the service version.
- `PUT /inc`     - Increment the service count. Returns 204.
- `PUT /dec`     - Decrement the service count. Returns 204.

## Running the Service

Via Docker:

```sh
$ ./run-service.sh
```

Via Node:

```sh
$ npm install
$ node app.js
```

## Building the Service

```sh
$ ./build.sh
```
