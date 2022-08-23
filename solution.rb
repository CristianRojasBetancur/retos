require 'sinatra'
require 'sinatra/reloader' if development?

count = 0

get '/' do
  @count = count
  count += 1
  erb :index
end

# post '/' do
#   count += 1
#   redirect '/'
# end