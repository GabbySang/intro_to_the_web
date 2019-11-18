require 'sinatra'
set :session_secret, 'super secret'


get '/' do
  "hello!"
end

get '/secret' do
  "here is a NEW secret message"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
