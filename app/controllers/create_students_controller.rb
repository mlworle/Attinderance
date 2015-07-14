class CreateStudentsController < ApplicationController
  before_action :set_create_student, only: [:show, :edit, :update, :destroy]

  # GET /create_students
  # GET /create_students.json
  def index
    @create_students = CreateStudent.all
  end

  # GET /create_students/1
  # GET /create_students/1.json
  def show
  end

  # GET /create_students/new
  def new
    @create_student = CreateStudent.new
  end

  # GET /create_students/1/edit
  def edit
  end

  # POST /create_students
  # POST /create_students.json
  def create
    @create_student = CreateStudent.new(create_student_params)

    respond_to do |format|
      if @create_student.save
        format.html { redirect_to @create_student, notice: 'Create student was successfully created.' }
        format.json { render :show, status: :created, location: @create_student }
      else
        format.html { render :new }
        format.json { render json: @create_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_students/1
  # PATCH/PUT /create_students/1.json
  def update
    respond_to do |format|
      if @create_student.update(create_student_params)
        format.html { redirect_to @create_student, notice: 'Create student was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_student }
      else
        format.html { render :edit }
        format.json { render json: @create_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_students/1
  # DELETE /create_students/1.json
  def destroy
    @create_student.destroy
    respond_to do |format|
      format.html { redirect_to create_students_url, notice: 'Create student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_student
      @create_student = CreateStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_student_params
      params.require(:create_student).permit(:first_name, :last_name)
    end
end
