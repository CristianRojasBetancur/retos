require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	request.env.has_key?("permiso") ? "Si lo logramos!" : "Sin permiso"
end