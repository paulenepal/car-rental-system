class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :edit, :update, :delete, :destroy]

    def index
        @customers = Customer.all.order(:id)
    end

    def show
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            redirect_to customers_path, notice: "Customer was successfully added."
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @customer.update(customer_params)
            redirect_to customer_path(@customer), notice: "Customer was succesfully updated"
        else
            render :edit
        end
    end

    def delete
    end

    def destroy
        @customer.destroy
        redirect_to customers_path
    end

    private

    def customer_params
        params.require(:customer).permit(:full_name, :email, :address, :contact_number)
    end

    def set_customer
        @customer = Customer.find(params[:id])
    end

end
