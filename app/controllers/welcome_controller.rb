class WelcomeController < ApplicationController

  before_filter :redirect_to_dashboard_when_authenticated

  def index
    @user = User.new
  end

  private
  def redirect_to_dashboard_when_authenticated
   redirect_to dashboard_path if signed_in?
  end
end

