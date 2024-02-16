class CarsController < ApplicationController
    before_action :set_car, only: [:show, :edit, :update, :delete, :destroy]

    def index
        @cars = Car.all
    end

    def show
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.new(car_params)
        if @car.save
            redirect_to cars_path, notice: "Car was successfully added."
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @car.update(car_params)
            redirect_to car_path(@car), notice: "Car was succesfully updated"
        else
            render :edit
        end
    end

    def delete
    end

    def destroy
        @car.destroy
        redirect_to cars_path
    end

    private

    def car_params
        params.require(:car).permit(:make, :model, :plate_number)
    end

    def set_car
        @car = Car.find(params[:id])
    end
end
