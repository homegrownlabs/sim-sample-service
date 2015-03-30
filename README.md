# Sample Service for Simulation Testing

A simple web service targetted by the generated simulant test suite.

This service exposes four endpoints:
- `GET /`        - Returns 200 with JSON body containing the current service
                   count.
- `GET /version` - Returns JSON describing the service version.
- `PUT /inc`     - Increment the service count. Returns 204.
- `PUT /dec`     - Decrement the service count. Returns 204.

## Running the service

Via Docker:

```
$ docker run --tty --port 8080:8080 homegrownlabs/sample-service
```

Via Node:

```
$ npm install
$ node app.js
```
