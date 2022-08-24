require 'sinatra'
# require 'sinatra/reloader' if development?

get '/' do
	request.env['HTTP_permiso'] ? "Si lo logramos!" : "Sin permiso"
end