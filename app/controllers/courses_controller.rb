class CoursesController < ApplicationController

def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path
    else
      render(:new)
    end
  end

  def course_params
    params.require( :course).permit( :name)
  end

  def edit
    @course = Course.find(params[:id])
  end

  # DELETE /course/1
  # DELETE /course/1.json
  def destroy
    Course.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to course_url, notice: 'Course was successfully removed.' }
      format.json { head :no_content }
    end
    # redirect_to static_pages_home_path
  end

# This should not be here, index action is used instead. Remember to delete it and check the routes.
  def show
    @courses = Course.all
  end
end
