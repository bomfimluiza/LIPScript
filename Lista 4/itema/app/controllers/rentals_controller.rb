class RentalsController < ApplicationController
    def index
        @rental = Rental.all
    end
    
    def show
        @rental = Rental.find(params[:id])
    end

    def new
        @rental = Rental.new

        @all_cars = Car.all
        @busy_cars = Car.all.joins(:rentals).where('rentals.enddate > ?', Date.today)
        
        @available_cars = @all_cars - @busy_cars
    end
    
    def edit
        @rental = Rental.find(params[:id])

        @all_cars = Car.all
        @busy_cars = Car.all.joins(:rentals).where('rentals.enddate > ?', Date.today)
        
        @available_cars = @all_cars - @busy_cars

        @available_cars.push(Car.find(@rental.car_id))
    end

    def create
        @rental = Rental.new(rental_params)
        
        if @rental.save
            redirect_to @rental
        else
            @all_cars = Car.all
            @busy_cars = Car.all.joins(:rentals).where('rentals.enddate > ?', Date.today)
            
            @available_cars = @all_cars - @busy_cars
            
            render 'new'
        end
    end
 
    def update
        @rental = Rental.find(params[:id])
        
        if @rental.update(rental_params)
            redirect_to @rental
        else
            @all_cars = Car.all
            @busy_cars = Car.all.joins(:rentals).where('rentals.enddate > ?', Date.today)
            
            @available_cars = @all_cars - @busy_cars
    
            @available_cars.push(Car.find(@rental.car_id))

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
            params.require(:rental).permit(:client_id, :car_id, :startdate, :enddate)
        end
end
