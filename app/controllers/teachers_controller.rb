class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to teachers_path
    else
      render(:new)
    end
  end

  def teacher_params
    params.require( :teacher).permit( :name)
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  # DELETE /teacher/1
  # DELETE /teacher/1.json
  def destroy
    Teacher.find(params[:id]).destroy
  #  respond_to do |format|
  #    format.html { redirect_to teacher_url, notice: 'Student was successfully removed.' }
  #    format.json { head :no_content }
  #  end
    redirect_to static_pages_home_path
  end

  def show
  end
end
