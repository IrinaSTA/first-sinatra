require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'no secrets here - booooring!'
end

get '/name' do
  'irina'
end

get '/hometown' do
  'orenburg'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
