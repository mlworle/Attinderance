require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@teacher = Teacher.new(name: "Example Teacher")
  end
  
  test "should be valid" do
    assert @teacher.valid?
  end 

  test "name should be present" do
  	@teacher.name = "     "
  	assert_not @teacher.valid?
  end

  test "name should not be too long" do
  	@teacher.name = "a" * 51
  	assert_not @teacher.valid?
  end

  test "name should be unique" do
  	duplicate_teacher = @teacher.dup
  	@teacher.save
  	assert_not duplicate_teacher.valid?
  end
end
