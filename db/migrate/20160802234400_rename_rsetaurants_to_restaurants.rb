class RenameRsetaurantsToRestaurants < ActiveRecord::Migration[5.0]
  def change
    rename_column :rest_cats, :rsetaurant_id, :restaurant_id
  end
end
