class UsersController < ApplicationController

def show
end

def edit
	@user = User.find(params[:id])
end

def update
	@user = User.find(params[:id])
	if @user.update(user_params)
		redirect_to @user
	else
		render :edit
	end
end

private
  def user_params
    params.require(:user).permit(:first_name, :email)
  end

end