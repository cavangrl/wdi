require 'sinatra'
require 'mandrill'

# recipients take an array with one or more hashes
def message(recipients, body)
	 m = Mandrill::API.new
	 new_message = {  
	 :subject=> "Hello from the Mandrill API",  
	 :from_name=> "Brian Fountain",  
	 :text=> body,  
	 :to=> recipients,  
	 :html=>"<html><p>#{body}</p></html>",  
	 :from_email=>"brian@brianfountain.com"  
	}  
	sending = m.messages.send new_message  
	puts sending
end

get '/' do 
  @title = "Welcome!"	
  erb :index
end

get '/contact' do 
  @title = "Contact us!"	
  erb :contact
end

post '/send-mail' do 
  puts "SEND MAIL"
  to = [{:email=> params[:recipient], :name=> ""}]
  message(to, params[:body])
  redirect to('/')
end