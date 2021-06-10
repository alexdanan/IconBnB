class DashboardsController < ApplicationController
  before_action :skip_pundit?
  def show
    @bookings = current_user.bookings
    start_date = params.fetch(:start_date, Date.today).to_date
    @date_range = (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def list
  end
end


