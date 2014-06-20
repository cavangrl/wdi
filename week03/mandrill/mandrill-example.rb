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

send_message("brian@brianfountain.com", "Can I get a little help?")