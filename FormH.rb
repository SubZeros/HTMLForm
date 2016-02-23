# FormH.rb
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb :HTMLForm
end

 post '/form' do
  erb :Response, locals: params
end

helpers do

  def h(text)
    Rack::Utils.escape_html(text)
  end


  end
