class ChatterController < ApplicationController

require 'redis'

before_filter :make_websocket , only: [:paserver]

  def paserver
  end

  def chat
    f = $redis.LLEN 'msg'
    @a = $redis.lrange('msg',0,f)
  end

  def page2
  end

  def save
    @up = Upload.new(params[:upload])
    @up.name = cookies[:name]
    @up.save
    redirect_to upload_path
  end

  def upload
    @up = Upload.new  
    @all = Upload.all
  end
 
  def login
    if cookies[:name]
      redirect_to chat_path
    end
  end

  def create
    cookies[:name] = params[:name]
    redirect_to chat_path 
  end

  def delete
    cookies.delete :name
    redirect_to root_path
  end

#Completely different world below !!!


  def make_websocket
  require 'em-websocket'
  require 'sanitize'

soc = []



EM::WebSocket.start(host: '10.20.4.130' , port: 4000) do |ws|

  ws.onopen{soc << ws;puts "#{soc.length} clients present";}
  ws.onmessage { |msg| ; soc.each do |s| 
        msg = Sanitize.clean(msg.html_safe , :elements => %w(font) , :attributes => {'font' => ['color']})
				s.send("#{msg}")
				end ; $redis.LPUSH 'msg', "#{msg}" }
  ws.onclose {puts "Someone dissconected " ; soc.delete(ws)}
  end
  end

end
