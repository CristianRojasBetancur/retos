require 'sinatra'

count = 0

get '/' do
  @header = request.env["HTTP_SEC_CH_UA"].split(";")[0].delete("\"")
  
  erb :index
end