require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@student = Student.new(name: "Example Student")
  end

  test "should be valid" do
  	assert @student.valid?
  end

  test "name should be present" do
  	@student.name = ""
  	assert_not @student.valid?
  end

  test "name should not be too long" do
  	@student.name = "a" * 51
  	assert_not @student.valid?
  end

  test "name should be unique" do
  	duplicate_student = @student.dup
  	@student.save
  	assert_not duplicate_student.valid?
  end
  
end
