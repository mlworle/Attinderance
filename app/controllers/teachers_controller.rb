class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    @teacher.save
    redirect_to teachers_path
  end

  def teacher_params
    params.require( :teacher).permit( :name)
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    respond_to do |format|
      @teacher = Teacher.find(params[:id])
      if @teacher.update(teacher_params)
        format.html { redirect_to teachers_path, notice: 'Student info was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
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
