class StudentsController < ApplicationController

  def index
    @students = Student.all  
  end

  def edit
    # Edit will delete the old data and replace with new
    @student = Student.find(params[:id])
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to students_path
    else
      render(:new)
    end
  end

  def student_params
    params.require( :student).permit( :name)
  end

 # DELETE /student/1
  # DELETE /student/1.json
  def destroy
    Student.find(params[:id]).destroy
  #  respond_to do |format|
  #    format.html { redirect_to student_url, notice: 'Student was successfully removed.' }
  #    format.json { head :no_content }
  #  end
    redirect_to students_path
  end

end
