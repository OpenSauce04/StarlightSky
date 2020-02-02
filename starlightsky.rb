require 'webrick'
if ARGV.first!="--no-launchy"
  require 'launchy'
end
server = WEBrick::HTTPServer.new :Port => 8000
server.mount "/", WEBrick::HTTPServlet::FileHandler, './'
trap('INT') { server.stop }
if ARGV.first!="--no-launchy"
  Launchy.open("http://localhost:8000")
end
server.start
