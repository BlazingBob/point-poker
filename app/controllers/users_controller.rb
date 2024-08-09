# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @user = User.new
    nil unless @user.save
  end
end
