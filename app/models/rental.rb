class Rental < ApplicationRecord
    belongs_to :user
    belongs_to :videogame

    def start_date_format
        self.start_date.strftime("%m/%d/%Y")
    end

    def end_date_format
        self.end_date.strftime("%m/%d/%Y")
    end

    def calculate_days 
       start = self.start_date
       end_date = self.end_date

       diff = (end_date - start)

       (diff/1.day).round  
    end

    def rental_price
        rental_amount = calculate_days * 2
        self.price = rental_amount
    end

end
