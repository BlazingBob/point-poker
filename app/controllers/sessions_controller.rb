class SessionsController < ApplicationController
  def create
    @session = Session.new
    if @session.save!
      redirect_to root_path, notice: 'Session created successfully'
    else
      render :home, alert: 'Failed to create session'
    end
  end
end
