class AuthenticationsController < ApplicationController

  def new
  end

  def create
  	teacher = Teacher.find_by(email: params[:authentication][:email].downcase)
    debugger
  	if teacher && teacher.authenticate(params[:authentication][:password])
  		# Log the user in and redirect to the user's show page
  	else
  		flash[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
  end

  def params
  	params.require(:authentication).permit(:name, :email, :password)
  end

end
