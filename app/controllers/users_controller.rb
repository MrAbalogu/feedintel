class UsersController < ApplicationController
  # before_action :authenticate_user!
  # after_action :verify_authorized

  def index
    @users = User.all
  end

  def edit
    @user = current_user
    # authorize @user
  end


  def company
  end

  def new
    build_resource
    yield resource if block_given?
    respond_with resource
  end

  def show
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    # authorize @user
    if @user.update_attributes(secure_params)
      redirect_to user_path(@user), :notice => "User updated."
    else
      redirect_to user_path(@user), :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :fullname )
  end

end
