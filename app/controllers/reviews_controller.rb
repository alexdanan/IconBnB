class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    icon = @booking.icon
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    authorize @review
    if @review.save
      redirect_to icon_path(icon)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end
