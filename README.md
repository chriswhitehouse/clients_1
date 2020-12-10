# clients_1
A micro project looking at setting up local server and client, and getting them to talk to each other.

## Motivation
To support learning about server client relationships.

## Build status
Finished

## Screenshots
Include logo/demo screenshot etc.

## Tech/framework used
Ruby with Socket gem

## Features
Talking clock.

## Code Example
Server:
```Ruby
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
```

Client:
```Ruby
require 'socket'

socket = TCPSocket.new('localhost', 2345)

while line = socket.gets
  puts line
  puts "Cool"
  socket.puts "Cool"
end

socket.close
```

## How to use?
In the terminal. Set one terminal running server.rb, and the another running client.rb. The outputs will be presented in the 'client' terminal.
