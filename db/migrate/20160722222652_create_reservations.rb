class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
       t.integer :user_id
       t.integer :restaurant_id
       t.string :email
       t.datetime :requesteddatetime
       t.string :shortmessage
       t.timestamps
    end
  end
end
