require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test "should not save Movie without title" do
    movie = Movie.new(description: "desc1", length: 85)
    assert_not movie.save
  end

  test "should not save Movie description title" do
    movie = Movie.new(title: "title1", length: 85)
    assert_not movie.save
  end

  test "should not save Movie without length" do
    movie = Movie.new(title: "title1", description: "desc1")
    assert_not movie.save
  end

  test "should save Movie with all parameter given" do
    movie = Movie.new(title: "title1", description: "desc1", length: 85)
    assert movie.save
  end
end
