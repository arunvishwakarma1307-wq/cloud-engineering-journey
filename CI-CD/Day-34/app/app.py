from http.server import BaseHTTPRequestHandler, HTTPServer


class CloudGuardHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        message = b"Day-34 Docker CI/CD Application is Running!"

        self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.send_header("Content-Length", str(len(message)))
        self.end_headers()
        self.wfile.write(message)


server = HTTPServer(("0.0.0.0", 8000), CloudGuardHandler)

print("Server running on port 8000")

server.serve_forever()