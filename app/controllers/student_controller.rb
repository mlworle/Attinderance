class StudentController < ApplicationController

  def index
    @students = Student.all  
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    @student.save
    redirect_to @student
  end

  def student_params
    params.require( :student).permit( :name)
  end

end
