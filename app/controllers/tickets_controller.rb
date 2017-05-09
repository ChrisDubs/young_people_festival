class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @background = 'back-tickets'
  end
end
