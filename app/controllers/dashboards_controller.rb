class DashboardsController < ApplicationController
  before_action :skip_pundit?
  def show
    @bookings = current_user.bookings
  end
end
