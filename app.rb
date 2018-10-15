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

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
