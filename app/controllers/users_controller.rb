class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    if authorize_user(params[:id])
      @user = current_user
    else
      redirect_to new_user_session_path
    end
  end

  def profile
    @user = current_user
    render :show
  end

  private

  def authorize_user(id)
    current_user.id == id.to_i
  end
end
