# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @user = User.new
    @user.save!
  end
end
