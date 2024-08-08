class PagesController < ApplicationController
  def home
    @sessions = Session.all
  end
end
