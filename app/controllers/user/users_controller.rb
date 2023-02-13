class User::UsersController < ApplicationController
  def index
    if user_signed_in?
      @users = User.where.not(id: current_user.id).where.not(is_deleted: true)
    else
      @users = User.where.not(is_deleted: true)
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.id == current_user.id
      if @user.update(user_params)
        redirect_to user_path(current_user)
      else
        render :edit
      end
    else
      redirect_to user_path(current_user)
    end
  end

  def retire
  end

  private
  def user_params
    params.require(:user).permit(:email, :id_name, :name, :profile, :sex, :birth_day, :is_deleted)
  end
end
