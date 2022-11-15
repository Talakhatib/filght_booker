class PassengersController < ApplicationController

    def show
        @booking = Booking.find(params[:booking_id])
        @passenger = Passenger.find(params[:id])
    end
    
end
