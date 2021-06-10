class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @icons = Icon.all
    @icon_one = @icons.sample
    @barack = Icon.find_by(name: "Barack Obama")
    @rihanna = Icon.find_by(name: "Walter White")
    @socrates = Icon.find_by(name: "Michael Jordan")
  end
end
