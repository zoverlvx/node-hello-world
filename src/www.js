const http = require("http");
// user-defined port
const PORT = process.env.PORT;

http.createServer(function (req, res) {
	// Send the HTTP header
    // HTTP Status: 200 : OK
	// Content-Type: text/plain

	res.writeHead(200, {"Content-Type": "text/plain"});

	// Send the response body as Hello World
	res.end("Hello World\n");
	
}).listen(PORT);

console.log(`Node hello world running on port ${PORT}`);
