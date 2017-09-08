require 'sinatra'
require 'pony'



get '/incoming-sms' do
	puts params['text']
	puts params['messageId']
	puts params['to']
	# do something interesting with this data...
		
	Pony.mail :to => 'joellejmaze918@gmail.com',
	          :from => params['from'],
	          :subject =>  params['messageId'],
	          :body =>  params['text'],
	          :via => :smtp,
	          :via_options => {
	              :address              => 'smtp.sendgrid.net',
	              :port                 => '587',
	              :user_name                 => 'app5314159@heroku.com',
	              :password             => 'x95avl8s2995',
	              :authentication       => :plain, 
	              :domain               => "virtual-phone-test.herokuapp.com" 
	            } 
	
end