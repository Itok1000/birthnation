class UsersController < ApplicationController
    def new; end
    def submit
      @user = User.new(name: params[:name], birth_date: params[:birth_date])
      if @user.save
          redirect_to result_path(id: @user.id)
      else
          redirect_to new_users_path
      end
    end
    def result
      @user = User.find(params[:id])
    end
end
