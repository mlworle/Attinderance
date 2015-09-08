class CoursesController < ApplicationController

def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to courses_path
  end

  def course_params
    params.require( :course).permit( :name)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    respond_to do |format|
      @course = Course.find(params[:id])
      if @course.update(course_params)
        format.html { redirect_to courses_path, notice: 'Course info was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
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

  def show
    @courses = Course.all
  end
end
