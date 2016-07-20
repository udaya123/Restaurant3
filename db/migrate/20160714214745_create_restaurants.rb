class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.references :user, index: true

      t.timestamps
    end
  end
end
