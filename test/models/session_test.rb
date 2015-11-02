require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@session = Session.new(date: "2014-10-01 00:00:00 UTC", course_id: nil, attendance_id: nil)
  end
  	
  test "should be valid" do
  	assert @session.valid?
  end

  test "date should not be empty" do
    @session.date = "0000-00-00 00:00:00"
    assert_not @session.valid?
  end
end
