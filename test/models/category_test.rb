require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "should not save Category without name" do
    category = Category.new
    assert_not category.save
  end

  test "invalid without name" do
    category = Category.new(name: "name1")
    category.name = nil
    refute category.valid?, 'saved auditorium without a name'
    assert_not_nil category.errors[:name], 'no validation error for name present'
  end
end
