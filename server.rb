require 'socket'

server = TCPServer.new(2345)
socket = server.accept

socket.puts "Hello !"
socket.puts "Time is #{Time.now}"

while line = socket.gets
  socket.puts "Hello !"
  socket.puts "Time is #{Time.now}"
end


socket.close
