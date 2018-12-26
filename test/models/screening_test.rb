require 'test_helper'

class ScreeningTest < ActiveSupport::TestCase

  test "should not save Screening without movie" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    screening = Screening.new(date: "desc1", price: 500, auditorium: auditorium)
    assert_not screening.save
  end

  test "should not save Screening without date" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    movie = Movie.new(title: "title1", description: "desc1", length: 85)
    screening = Screening.new(movie: movie, price: 500, auditorium: auditorium)
    assert_not screening.save
  end

  test "should not save Screening without price" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    movie = Movie.new(title: "title1", description: "desc1", length: 85)
    screening = Screening.new(movie: movie, date: "2018-10-10", auditorium: auditorium)
    assert_not screening.save
  end

  test "should not save Screening without auditorium" do
    movie = Movie.new(title: "title1", description: "desc1", length: 85)
    screening = Screening.new(movie: movie, date: "2018-10-10", price: 500)
    assert_not screening.save
  end

  test "should save Screening with all parameter given" do
    auditorium = Auditorium.new(name: "name1", capacity: 5)
    movie = Movie.new(title: "title1", description: "desc1", length: 85)
    screening = Screening.new(movie: movie, date: "2018-10-10", price: 500, auditorium: auditorium)
    assert screening.save
  end
end
