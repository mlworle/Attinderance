class TeacherController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def edit
  end

  # DELETE /teacher/1
  # DELETE /teacher/1.json
  def destroy
    Teacher.find(params[:id]).destroy
  #  respond_to do |format|
  #    format.html { redirect_to student_url, notice: 'Student was successfully removed.' }
  #    format.json { head :no_content }
  #  end
    redirect_to teachers_path
  end

  def view
  end
end
