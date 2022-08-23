require 'sinatra'
require 'sinatra/reloader' if development?

count = 0

get '/' do
  @count = count
  erb :index
end

post '/' do
  count += 1
  redirect '/'
end