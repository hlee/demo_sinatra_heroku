require 'sinatra'

#set :port, 5000

def json_file(name)
  "#{settings.root}/json/#{name}.json"
end

get '/menu' do
  send_file json_file(:menu)
end

get '/menu/:section' do |section|
  raise unless %w(small-dishes large-dishes pasta).include?(section)
  send_file json_file(section)
end

get '/about' do
  send_file json_file(:about)
end

get '/offers' do
  send_file json_file(:offers)
end
