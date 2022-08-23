require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end

post '/abuela' do

	if params[:mensaje] == params[:mensaje].upcase
		@mensaje = "Ahhh si, manzanas!"
	else
		@mensaje = "Habla más duro mijito"
	end

  erb :mensaje
	#redirect "/abuela/?mensaje=#{@mensaje}"
end

