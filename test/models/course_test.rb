require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@course = Course.new(name: "Example Course")
  end
  
  test "should be valid" do
    assert @course.valid?
  end 

  test "name should be present" do
  	@course.name = ""
  	assert_not @course.valid?
  end

  test "name should not be too long" do
  	@course.name = "a" * 51
  	assert_not @course.valid?
  end

  test "name should be unique" do
  	duplicate_course = @course.dup
  	@course.save
  	assert_not duplicate_course.valid?
  end
end
