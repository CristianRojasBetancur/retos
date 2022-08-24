require 'sinatra'
# require 'sinatra/reloader' if development?

get '/' do
	request.env['HTTP_PERMISO'] ? "Si lo logramos!" : "Sin Permiso"
end