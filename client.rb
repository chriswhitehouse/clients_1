require 'socket'

socket = TCPSocket.new('localhost', 2345)

while line = socket.gets
  puts line
  puts "Cool"
  socket.puts "Cool"
end

socket.close
