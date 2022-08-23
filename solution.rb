require 'sinatra'
# require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

post '/enviar-mensaje' do

  if params[:mensaje] == params[:mensaje].upcase
    @mensaje = "Ahhh si, manzanas!"
  else
    @mensaje = "Habla más duro mijito"
  end

  redirect "/abuela/?mensaje=#{@mensaje}"
end

get '/abuela/' do
  @mensaje = params[:mensaje]
  erb :mensaje
end

