require 'sinatra'
# require 'sinatra/reloader' if development?

get '/' do
	request.env['HTTP_PERMISO'].eql?('soy-un-token-secreto') ? "Si lo logramos!" : "Sin permiso"
end