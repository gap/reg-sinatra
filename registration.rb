
require 'sinatra'

get '/' do
	puts 'Get'
	"Registration Server version 0.0.1 (GET)"
end

post '/' do
	puts "Post with Params = #{params}"
	"Registration Server version 0.0.1 (POST)"
end

post '/SerialNumber' do
	response = Net::HTTP.post_form( URI('http://reg.patternmaker.info/SerialNumber'), params)
	response.body
end

