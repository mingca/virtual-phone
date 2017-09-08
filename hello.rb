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
	              :address              => 'smtp.gmail.com',
	              :port                 => '587',
	              :user_name                 => 'joellejmaze918',
	              :password             => 'strongman',
	              :authentication       => :plain, 
	              :domain               => "virtual-phone-test.herokuapp.com" 
	            } 
})
end