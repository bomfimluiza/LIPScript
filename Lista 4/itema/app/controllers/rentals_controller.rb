class RentalsController < ApplicationController
    def index
        @rental = Rental.all
    end
    
    def show
        @rental = Rental.find(params[:id])
    end

    def new
        @rental = Rental.new
    end
    
    def edit
        @rental = Rental.find(params[:id])
    end

    def create
        @rental = Rental.new(rental_params)
        
        if @rental.save
            redirect_to @rental
        else
            render 'new'
        end
    end
 
    def update
        @rental = Rental.find(params[:id])
        
        if @rental.update(rental_params)
            redirect_to @rental
        else
            render 'edit'
        end
    end
    
    def destroy
        @rental = Rental.find(params[:id])
        @rental.destroy
        
        redirect_to rentals_path
    end

    private
        def rental_params
            params.require(:rental).permit(:clientid, :carid, :startdate, :enddate)
        end
end
