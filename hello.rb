require 'sinatra'

get '/incoming-sms' do
  puts params['text']
  puts params['messageId']
  puts params['to']
  # do something interesting with this data...
end