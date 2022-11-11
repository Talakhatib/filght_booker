class BookingsController < ApplicationController
    def show
        @booking = Booking.find(params[:id])
    end
    def new 
        @booking =Booking.new
        params[:nb_passengers].to_i.times do 
           @booking.passengers.new
        end
        @flight = Flight.find_by(id: params[:flight])
    end
    def create
        @flight = Flight.find(params[:flight_id])
        @booking = @flight.flight_bookings.new(booking_params)
        if @booking.save 
            redirect_to @booking
        else
           flash[:danger] = "Failed booking information !!"
           redirect_to root_path
        end
    end

    private 

    def booking_params 
        params.require(:booking).permit(passengers_attributes: [:name,:email,:booking_id] )
    end
end
