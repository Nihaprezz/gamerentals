class RentalsController < ApplicationController
    before_action :find_rental, only: [:show, :update, :edit]

    def index
        @rentals = Rental.all
    end

    def show
    end

    def new
        @rental = Rental.new
    end

    def create
        @rental = Rental.create(rental_params)

        redirect_to rental_path(@rental)
    end

    def edit
    end
    
    def update
    end

    private

    def rental_params
        params.require(:rental).permit(:start_date, :end_date, 
        :videogame_id, :user_id)
    end

    def find_rental
        @rental = Rental.find(params[:id])
    end


end
