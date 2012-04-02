class DashboardsController < ApplicationController

  before_filter :authorize

  def show
    @shout = Shout.new
    @shouts = current_user.shouts.current
  end

end
