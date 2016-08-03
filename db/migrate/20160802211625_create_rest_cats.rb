class CreateRestCats < ActiveRecord::Migration[5.0]
  def change
    create_table :rest_cats do |t|
      t.integer :rsetaurant_id
      t.integer :category_id

      t.timestamps
    end
  end
end
