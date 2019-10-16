class Videogame < ApplicationRecord
    has_many :rentals, dependent: :destroy
    has_many :users, through: :rentals

    
end
