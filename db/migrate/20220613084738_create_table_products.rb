class CreateTableProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :size
      t.boolean :is_spisy
      t.boolean :is_veg
      t.boolean :is_best_offer
      t.string :path_to_image
      t.timestamps
    end
  end
end
