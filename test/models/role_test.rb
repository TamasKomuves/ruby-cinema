require 'test_helper'

class RoleTest < ActiveSupport::TestCase

  test "should not save Role without user" do
    role = Role.new(role: "ADMIN")
    assert_not role.save
  end

  test "should not save Role without role" do
    user1 = User.new(email: 'example@asd.com', password: '12345')
    role = Role.new(user: user1)
    assert_not role.save
  end

  test "should save Role with all parameter given" do
    user1 = User.new(email: 'example@asd.com', password: '12345')
    role = Role.new(user: user1, role: "ADMIN")
    assert role.save
  end
end
