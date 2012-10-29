require 'sinatra'

set :host, '127.0.0.1'
set :port, 9666

get '/' do
  File.read("../client/html/index.html")
end

get '/bin/app.swf' do
  File.read("../client/bin/jack2.swf")
end

get '/js/swfobject.js' do
  File.read("../client/html/js/swfobject.js")
end

get '/css/common.css' do
  File.read("../client/html/css/common.css")
end