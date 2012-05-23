=begin
require 'em-websocket'

soc = []


EM::WebSocket.start(host: '127.0.0.1' , port: 3000) do |ws|

  ws.onopen{soc << ws;puts "#{soc.length} clients present";ws.send('Welcome to chat server !!')}
  ws.onmessage { |msg| ; soc.each do |s| 
				s.send("#{msg}")
				end }
  ws.onclose {puts "Someone dissconected " ; soc.delete(ws)}
=end
