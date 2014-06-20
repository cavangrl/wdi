require 'sinatra'
require 'mandrill'

def send_message(from, body)  
	m = Mandrill::API.new
	message = {  
	 :subject=> "New Message Received",  
	 :from_name=> "Brian Fountain",  
	 :text=> body,  
	 :to=>[  
	   {  
	     :email=> "brian@nycda.com",  
	     :name=> "Brian Fountain"  
	   }  
	 ],  
	 :html=>"<html>#{body}</html>",  
	 :from_email=> from  
	}  
	sending = m.messages.send message  
	puts sending
end

get '/' do 
  @title = "Welcome!"	
  erb :root
end

get '/contact' do
	@title = "Say hello!"
	erb :contact
end

post '/send-mail' do
	send_message(params[:from], params[:body])
	redirect to('/')
end

get '/sup' do
	@q = params[:hi]
	erb :sup
end

get '/form' do
	erb :form
end

post '/sign-in' do
  puts "my params are" + params.inspect
end

get '/home' do
  erb :home
end

get '/array' do
	@title = "Fun with arrays!"
	erb :array
end

get '/brian' do
	"Hello Brian!"
end

get '/hello' do
	"Hello Hello!"
end
