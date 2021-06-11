class IconsController < ApplicationController
  def index
    @icons = policy_scope(Icon)
    if params[:query].present?
      sql_query = " \
        icons.location @@ :query \
        OR icons.category @@ :query \
      "
      @icons = Icon.where(sql_query, query: "%#{params[:query]}%")
    else
      @icons = Icon.all
    end

    if params[:location].present?
      @icons = @icons.near(params[:location], 20)
    end

    @categories = Icon.distinct.pluck(:category)

    @markers = @icons.geocoded.map do |icon|
      {
        lat: icon.latitude,
        lng: icon.longitude,
        info_window: render_to_string(partial: "info_window", locals: { icon: icon })
      }
    end
  end

  def show
    @icon = Icon.find(params[:id])
    @booking = Booking.new

    @markers =
      [{
        lat: @icon.latitude,
        lng: @icon.longitude,
        info_window: render_to_string(partial: "info_window", locals: { icon: @icon })
      }]

    authorize @icon
    authorize @booking
  end

  def new
    @icon = Icon.new
    authorize @icon
  end

  def create
    @icon = Icon.new(icon_params)
    @icon.user = current_user
    authorize @icon
    if @icon.save
      redirect_to @icon, notice: "Icon was successfully created"
    else
      render :new
    end
  end

  def edit
    @icon = Icon.find(params[:id])
    authorize @icon
  end

  def update
    @icon = Icon.find(params[:id])
    if @icon.update(icon_params)
      redirect_to @icon, notice: "Icon was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @icon = Icon.find(params[:id])
    @icon.destroy
    redirect_to icons_path, notice: "Icon was successfully destroyed"
    authorize @icon
  end

  private

  def icon_params
    params.require(:icon).permit(:name, :category, :location, :price, :description, :photo)
  end
end
