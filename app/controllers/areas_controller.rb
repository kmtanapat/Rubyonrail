class AreasController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @area = @user.comments.create(area_params)
    redirect_to user_path(@user)
  end

  private
  def area_params
    params.require(:user).permit(:district,:province)
  end
end
