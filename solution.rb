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

  <<-HTML
    <h1> #{@mensaje}</h1>
  HTML
end

