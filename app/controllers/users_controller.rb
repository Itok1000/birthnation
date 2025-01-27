class UsersController < ApplicationController
  def new; end

  def submit
    @user = User.new(user_params)
    if @user.save
      redirect_to result_path(id: @user.id)
    else
      redirect_to new_users_path, danger: "名前が記載されているのを確認してください"
    end
  end

  def result
    @user = User.find(params[:id])
    @national_day = @user.find_closest_national_day
  end

  private

  def user_params
    params.require(:user).permit(:name, :birth_month, :birth_day)
  end
end
