require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
 	@attendance = Attendance.new(present: false, student_id: 0)
  end
  	
  test "should be valid" do
  	assert_not @attendance.valid?
  end
end
