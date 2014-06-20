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

recipients = [{:email=> "brian@nycda.com", :name=> "Brian Fountain"}]

message recipients, "Hello. I love you."