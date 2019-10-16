class User < ApplicationRecord
    has_many :rentals , dependent: :destroy
    has_many :videogames, through: :rentals
    accepts_nested_attributes_for :videogames


end
