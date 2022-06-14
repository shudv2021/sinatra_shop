class AddProducts < ActiveRecord::Migration[7.0]
  def change
    Product.create(:title => 'Булка',
      :description => 'Небольшая булка',
      :price => 50,
      :size => 250,
      :is_spisy => false,
      :is_veg => false,
      :is_best_offer => false,
      :path_to_image => '/img/bulka.jpg')
      
      Product.create(:title => 'Хотдог',
      :description => 'Хотдог с сосиской',
      :price => 100,
      :size => 300,
      :is_spisy => true,
      :is_veg => false,
      :is_best_offer => false,
      :path_to_image => '/img/dog.jpg')
      
      Product.create(:title => 'Сэндвич',
      :description => 'Сэндвич с колбасой',
      :price => 150,
      :size => 300,
      :is_spisy => true,
      :is_veg => false,
      :is_best_offer => true,
      :path_to_image => '/img/buter.jpg')
  end 
end
