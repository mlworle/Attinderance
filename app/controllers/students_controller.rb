class StudentsController < ApplicationController

  def index
    @students = Student.all  
  end

  def edit
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    @student.save
    redirect_to students_path

  end

  def student_params
    params.require( :student).permit( :name)
  end

end
