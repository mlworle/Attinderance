class SessionsController < ApplicationController

  def index
   @sessions = Session.all
  end

  def show
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(sessions_params)

    if @session.save
      redirect_to sessions_path
    else
      render(:new)
    end
  end

  def destroy
  end

  private
  def sessions_params
    params.require(:session).permit(:date, :course_id, :attendance_id )
  end
end
