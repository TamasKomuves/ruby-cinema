class TicketsController < ApplicationController

  def index
    @tickets = Ticket.where(user: current_user)
  end

  def show

  end

  def new
    @ticket = Ticket.new
    @screening = Screening.find(params[:id])
  end

  def create
    @user = User.find(params['user'])
    @screening = Screening.find(params['screening'])
    @ticket = Ticket.new({user: @user, screening: @screening, quantity: params['quantity']})
    @ticket.save!
  end

  def ticket_params
    params.require(:ticket).permit(:quantity, :screening, :user)
  end
end
