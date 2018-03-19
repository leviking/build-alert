require 'sinatra'
configure { set :server, :puma }

get '/' do
	File.read(File.join('./', 'index.html'))
end

get '/playFanfare' do
	`ogg123 ff7.ogg`
end


