class AuthenticationsController < ApplicationController

  def new
  end

  def create
  	teacher = Teacher.find_by(:email, teacher_params[:authentication][:email].downcase)
  	if teacher && teacher.authenticate(teacher_params[:authentication][:password])
  		# Log the user in and redirect to the user's show page
  	else
  		flash[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
  end

  def teacher_params
  	params.require(:teacher).permit(:name, :email, :password)
  end

end
