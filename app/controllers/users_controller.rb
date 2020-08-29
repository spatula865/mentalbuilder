class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) #追記、GS教材7-6
  end
end
