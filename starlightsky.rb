require 'webrick'
require 'launchy'
server = WEBrick::HTTPServer.new :Port => 8000
server.mount "/", WEBrick::HTTPServlet::FileHandler, './'
trap('INT') { server.stop }
Launchy.open("http://localhost:8000")
server.start
