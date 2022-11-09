class FlightsController < ApplicationController

    def index  
        if params[:departure] && params[:arrival] && params[:passengers] && params[:date_flight]
            @existing_flights = Flight.where(departure_id: params[:departure]).or(Flight.where(arrival_id: params[:arrival])).or(Flight.where(start_time: params[:date_flight]))
        end
        
        @flights = Flight.all
        @airports = Airport.all
    
    end

    private 
    def fligh_params
        params.require(:flight).permit(:departure_id,:arrival_id,:start_time,:duration,:departure,:arrival,:passengers,:date_flight) 
    end
end
