class RentalsController < ApplicationController
    before_action :set_rental, only: [:show, :edit, :update, :delete, :destory]

    def index
        @rentals = Rental.all.order(:created_at)
    end

    def show
    end

    def new
        @rental = Rental.new
    end

    def create
        @rental = Rental.new(rental_params)
        if @rental.save
            redirect to rentals_path, notice: "Rental No. #{@rental.id} was successfully added."
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @rentals.update(rental_params)
            redirect_to rental_path(@article), notice: "Rental No. #{@rental.id} was succesfully updated."
        else
            render :edit
        end
    end

    def delete
    end

    def destory
        @rental.destory
        redirect_to rentals_path, notice: "Rental No. #{@rental.id} was successfull destroyed."
    end

    private

    def rental_params
        params.require(:rental).permit(:car_id, :customer_id :start_date, :end_date)
    end

    def set_rental
        @rental = Rental.find(params[:id])
    end
end
