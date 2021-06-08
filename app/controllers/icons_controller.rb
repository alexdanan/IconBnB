class IconsController < ApplicationController
  def index

  end

  def show
    @icon = Icon.find(params[:id])

  end

  def new
    @icon = Icon.new
    authorize @icon
  end

  def create
    @icon = Icon.new(icon_params)
    authorize @icon
    @icon.user = current_user
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
    authorize @restaurant
    @icon = Icon.find(params[:id])
    if @icon.update(icon_params)
      redirect_to @icon, notice: "Icon was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    authorize @restaurant
    @icon = Icon.find(params[:id])
    @icon.destroy
    redirect_to icons_index_path, notice: "Icon was successfully destroyed"
  end

  private

  def icon_params
    params.require(:icon).permit(:name, :category, :location, :price, :description)
  end
end
