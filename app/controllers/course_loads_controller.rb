class CourseLoadsController < ApplicationController

  def index
    @course_loads = CourseLoad.all
  end

  def new
    @course_load = CourseLoad.new
  end

  def create
    @course_load = CourseLoad.new(course_load_params)

    @course_load.save
    redirect_to course_loads_path
  end

  def course_load_params
    params.require( :course_load).permit(:teacher_id, :teacher_name, :course_id, :course_name)
  end

  def show
  end

end
