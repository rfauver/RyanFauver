require 'sinatra'

get '/frontend' do
  erb :frontend
end

get '/*' do
  erb :index
end
