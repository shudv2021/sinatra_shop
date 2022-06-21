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

def parse_order(order)
  order.chomp!(', ').gsub!('product_', '')
    
  arr_order = []
  order.split(',').each do |item|
  item = item.split('=')
    arr_order << item
  end
  
  return arr_order
end

get '/' do
erb :index
end

get '/goods' do
@goods = Product.all
  erb :goods
end

post '/order' do
  @order = parse_order(params[:order])
  
    
  erb :orders
end
