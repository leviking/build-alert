require 'sinatra'
configure { set :server, :puma }

get '/' do
	File.read(File.join('./', 'index.html'))
end

get '/playFanfare' do
	`ogg123 ff7.ogg`
end

get '/volume/up' do
	`amixer -q sset 'Master' 5%+`
end

get '/volume/down' do
	`amixer -q sset 'Master' 5%-`
end

get '/volume/set/:amount' do
	`amixer -q sset 'Master' #{params[:amount]}`
end



