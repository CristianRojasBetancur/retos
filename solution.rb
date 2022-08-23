require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end

post '/abuela' do
	if params[:mensaje] == params[:mensaje].upcase
		"<h1>Ahhh si, manzanas!</h1>"
	else
		"<h1>Habla más duro mijito</h1>"
	end
end

