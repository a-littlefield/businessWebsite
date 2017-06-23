require 'sinatra'
enable :sessions


get '/' do
	@stylesheet = 'home.css'
	@title = "Home"
	erb :home
end

get '/tech-gallery' do
	@stylesheet = 'tech-gallery.css'
	erb :tech_gallery
end

post '/tech-gallery' do
	@email = params[:email]
	@password = params[:password]
	session[:email]=@email
	redirect '/tech-gallery'
end

get	'/logout' do
	session[:email] = nil
	redirect '/tech-gallery'
end
