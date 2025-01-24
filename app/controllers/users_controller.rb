class UsersController < ApplicationController
    def new; end

    def submit
      @user = User.new(user_params)
      if @user.save
        redirect_to result_path(id: @user.id)
      else
        redirect_to new_users_path
      end
    end

    def result
      @user = User.find(params[:id])
      @national_day = @user.find_closest_national_day
    end

    private
    def user_params
      params.require(:user).permit(:name, :birth_date)
    end
end
