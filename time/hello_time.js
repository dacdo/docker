const http = require('http');

http.createServer(function (req, res) {
  let dt = new Date();
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("Hello! The date and time are currently: " + dt);
  res.end();
}).listen(8080);
