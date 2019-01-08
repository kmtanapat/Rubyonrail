class AreasController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @area = @user.areas.create(area_params)
    redirect_to users_path(@user)
  end

  private
  def area_params
    params.require(:area).permit(:district, :province)
  end
end
