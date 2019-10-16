class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.integer :user_id
      t.integer :videogame_id

      t.timestamps
    end
  end
end
