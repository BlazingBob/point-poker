# frozen_string_literal: true

class SessionsController < ApplicationController
  def show
    @session = Session.find(params[:id])
  end

  def create
    @session = Session.new
    if @session.save
      redirect_to session_path(@session), notice: 'Session created successfully'
    else
      render :home, alert: 'Failed to create session'
    end
  end
end
