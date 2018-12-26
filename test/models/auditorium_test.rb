require 'test_helper'

class AuditoriumTest < ActiveSupport::TestCase

  test "should not save Auditorium without name" do
    auditorium = Auditorium.new(capacity: 5)
    assert_not auditorium.save
  end

  test "should not save Auditorium without capacity" do
    auditorium = Auditorium.new(name: "name1")
    assert_not auditorium.save
  end

  test "should save Auditorium with all parameter given" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    assert auditorium.save
  end

  test "invalid without name" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    auditorium.name = nil
    refute auditorium.valid?, 'saved auditorium without a name'
    assert_not_nil auditorium.errors[:name], 'no validation error for name present'
  end

  test "invalid without capacity" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    auditorium.capacity = nil
    refute auditorium.valid?, 'saved auditorium without a name'
    assert_not_nil auditorium.errors[:capacity], 'no validation error for name present'
  end
end
