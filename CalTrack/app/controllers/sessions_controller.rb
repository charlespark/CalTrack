class SessionsController < ApplicationController
  def new
  end

def create
	begin
		user = User.find_by({email: params[:session][:email]})
	rescue
		flash[:error] = 'Email not found.'
	end

	if user && user.authenticate(params[:session][:password])
		log_in(user)
		redirect_to menu_path
	else
		flash[:error] ||= 'Try again.'
		render 'new'
	end
end

def destroy

	log_out
	redirect_to menu_path
end

end

# <^^^^^ Basic log in and log out functionality>