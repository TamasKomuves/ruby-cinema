require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "should not save Ticket without user" do
    screening1 = Screening.new
    ticket1 = Ticket.new(screening: screening1, quantity: 2)
    assert_not ticket1.save
  end

  test "should not save Ticket without screening" do
    user1 = User.new(email: 'example@asd.com', password: '12345')
    ticket1 = Ticket.new(user: user1, quantity: 2)
    assert_not ticket1.save
  end

  test "should not save Ticket without quantity" do
    user1 = User.new(email: 'example@asd.com', password: '12345')
    screening1 = Screening.new
    ticket1 = Ticket.new(user: user1, screening: screening1)
    assert_not ticket1.save
  end

  test "should save Ticket with all parameters given" do
    user1 = User.new(email: 'example@asd.com', password: '12345')
    screening1 = Screening.new
    ticket1 = Ticket.new(user: user1, screening: screening1, quantity: 5)
    assert ticket1.save
  end
end
