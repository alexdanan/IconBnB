class BookingsController < ApplicationController
  before_action :find_icon, only: [:show, :new, :create, :edit]
  before_action :find, only: :destroy

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.icon = @icon
    if @booking.save
      redirect_to booking_path(@icon)
    else
      render :new
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:bookings).permit(:icon_id, :start_time, :end_time, :total_price, :status)
  end


  def find_icon
    @icon = Icon.find(params[:icon_id])
  end

  def find
    @booking = Booking.find(params[:id])
  end

end
