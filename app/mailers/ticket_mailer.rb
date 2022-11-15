class TicketMailer < ApplicationMailer

    def ticket_information(booking,passenger)
        @booking = booking
        @passenger = passenger
        mail to: passenger.email , subject: "Ticket For Your Booking Flight"
    end

end
