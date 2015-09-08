class StudentsController < ApplicationController

  def index
    @students = Student.all  
  end

  def edit
    # Edit will delete the old data and replace with new
    @student = Student.find(params[:id])
  end

  def update
    respond_to do |format|
      @student = Student.find(params[:id])
      if @student.update(student_params)
        format.html { redirect_to students_path, notice: 'Student info was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
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
    params.require( :student).permit( :name, :session_id, :course_id, :attendance_id )
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
