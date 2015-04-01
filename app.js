/* A simple web service targetted by the generated simulant test suite.
 *
 * This service exposes four endpoints:
 * - GET /        - Returns 200 with JSON body containing the current service
 *                  count.
 * - GET /version - Returns JSON describing the service version.
 * - PUT /inc     - Increment the service count. Returns 204.
 * - PUT /dec     - Decrement the service count. Returns 204.
 */
var express = require('express');

var PORT = process.env.PORT || 8080;
var git_repo = process.env.GIT_REPO;
var git_sha  = process.env.GIT_SHA;
var count = 0;

var app = express();
app.get('/', function (req, res) {
  res.status(200).send({count: count});
});

app.get('/version', function (req, res) {
  res.status(200).send({repo: git_repo,
                        sha:  git_sha})
});

app.put('/inc', function (req, res) {
  count += 1;
  res.status(204).end();
});

app.put('/dec', function (req, res) {
  count -= 1;
  res.status(204).end();
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
