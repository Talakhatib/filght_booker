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
          flash[:success] = "Please check your email !" 
          @booking.passengers.each do |passenger|
            TicketMailer.ticket_information(@booking,passenger).deliver_now
          end
             redirect_to @booking
        else
           render 'bookings/new'
        end
    end

    private 

    def booking_params 
        params.require(:booking).permit(passengers_attributes: [:name,:email,:phone,:date_of_birth,:address,:booking_id] )
    end
end
