# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @session = Session.find(params[:session_id])
    @user = @session.users.new(user_params) # Zorg dat de user aan de session wordt gekoppeld
    if @user.save
      redirect_to session_path(@session), notice: 'User successfully created'
    else
      redirect_to session_path(@session), alert: 'User could not be created'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
