require 'sinatra'
require 'pony'
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

get '/contact-us' do
	@stylesheet = 'contact_us.css'
	erb :contact_us
end

get '/end' do
	@stylesheet = 'end.css'
	erb :end
end

post '/tech-gallery' do
	@email = params[:email]
	@password = params[:password]
	session[:email] = @email
	Pony.mail(:to => 'andrew.ray.allan@gmail.com', :from => @email, :subject => 'Website sign up', :body => 'I like your website and I am interested in learning more about your company!')
	redirect '/tech-gallery'
end

post '/' do
	@email = params[:email]
	@password = params[:password]
	session[:email] = @email
	Pony.mail(:to => 'andrew.ray.allan@gmail.com', :from => @email, :subject => 'Website sign up', :body => 'I like your website and I am interested in learning more about your company!')
	redirect '/'
end

get	'/logout' do
	session[:email] = nil
	redirect '/'
end


post '/contact-us' do
	@email = params[:email]
	@password = params[:password]
	session[:email] = @email
	Pony.mail(:to => 'andrew.ray.allan@gmail.com', :from => @email, :subject => 'Website sign up', :body => 'I like your website and I am interested in learning more about your company!')
	redirect '/contact_us'
end


get '/future' do
	@stylesheet = 'future.css'
	erb :future
end

post '/future' do
	@email = params[:email]
	@password = params[:password]
	session[:email] = @email
	Pony.mail(:to => 'andrew.ray.allan@gmail.com', :from => @email, :subject => 'Website sign up', :body => 'I like your website and I am interested in learning more about your company!')
	redirect '/future'
end
