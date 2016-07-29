class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.string :datetimecreated
      
      t.string :userwhostarred
      
      t.string :Restaurantthatwasstarred
      

      t.timestamps
    end
  end
end
