class PagesController < ApplicationController

  def about
  end

  def home
    redirect_to user_path(current_user) if logged_in?
  end
end