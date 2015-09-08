class AttendancesController < ApplicationController

  def index
    @attendances = Attendance.all
  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)

    @attendance.save
    redirect_to attendances_path
  end

  def attendance_params
    params.require( :attendance).permit(:session_id, :student_id, :present)
  end

  def show
  end

end
