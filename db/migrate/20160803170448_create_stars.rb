class CreateStars < ActiveRecord::Migration[5.0]
  def change
    
    create_table :stars do |t|
      t.datetime :datetimecreated
      t.string :userwhostarred
      t.string :restaurantthatwasstarred

      t.timestamps
    end
  end
end
