require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@session = Session.new(date: "2014-10-29 00:00:00 UTC", course_id: 0, attendance_id: 0)
  end
  	
  test "should be valid" do
  	assert @session.valid?
  end
end
