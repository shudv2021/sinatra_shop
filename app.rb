#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'

set :database, {adapter: "sqlite3", database: "shop_ar.db"}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
erb :index
end

get '/goods' do
@goods = Product.all
  erb :goods
end

post '/orders' do
  @order = params[:order]
  @order.chomp!(', ').gsub!('product_')
    
  erb :orders
end
