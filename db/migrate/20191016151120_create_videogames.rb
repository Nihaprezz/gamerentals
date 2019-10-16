class CreateVideogames < ActiveRecord::Migration[6.0]
  def change
    create_table :videogames do |t|
      t.string :title
      t.string :erb_rating

      t.timestamps
    end
  end
end
