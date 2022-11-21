class HitmenController < ApplicationController
  # method for new hitmen
  def new
    @hitman = Hitman.new
  end

  # method for creating hitmen
  def create
    @hitman = Hitman.new(hitmen_params)
    @hitman.save!

    redirect_to hitmen_path(@hitman)
  end

  private

  # strong params for hitmen
  def hitmen_params
    params.require(:hitmen).permit(:name, :price, :description, :rating)
  end

end
