#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "shop_ar.db"}

class Product < ActiveRecord::Base
end

get '/' do
erb :index
end

get '/goods' do
@goods = Product.all
  erb :goods
end

post '/parchase' do

end
