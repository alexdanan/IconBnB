class IconsController < ApplicationController

  def index
  end

  def show
    @icon = Icon.find(params[:id])
  end

  def new
    @icon = Icon.new
  end

  def create
    @icon = Icon.new(icon_params)
    if @icon.save
      redirect_to @icon, notice: "Icon was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def icon_params
    params.require(:icons).permit(:name, :category, :location, :price, :description)
  end
end
