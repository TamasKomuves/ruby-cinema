class TicketsController < ApplicationController
  before_action :require_login

  def index
    @tickets = Ticket.where(user: current_user)
  end

  def new
    @ticket = Ticket.new
    @screening = Screening.find(params[:id])
  end

  def create
    @ticket = Ticket.new ticket_params
    @ticket.save!

    redirect_to tickets_path
  end

  def ticket_params
    params.require(:ticket).permit(:quantity, :screening_id, :user_id)
  end
end
