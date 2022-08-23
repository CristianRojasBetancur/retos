require 'sinatra'

count = 0

get '/' do
  @count = count
  erb :index
end

post '/' do
  puts count
  count += 1
  redirect '/'
end