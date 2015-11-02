class CourseRostersController < ApplicationController

  def index
    @course_rosters = CourseRoster.all
  end

  def new
    @course_roster = CourseRoster.new
  end

  def create
    @course_roster = CourseRoster.new(course_roster_params)

    if @course_roster.save
      redirect_to course_rosters_path
    else
      render(:new)
    end
  end

  def course_roster_params
    params.require( :course_roster).permit(:student_id, :student_name, :course_id, :course_name)
  end

  def show
  end

end
