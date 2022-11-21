class HitmenController < ApplicationController
  before_action :set_hitman, only: %i[show]
  
  def index
    @hitmen = Hitman.all
  end

  def show
  end
  
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
  
  def destroy
    @hitman = Hitman.find(params[:id])
    @hitman.destroy
    redirect_to hitmen_path,
    status: :see_other
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:id])
  end

  # strong params for hitmen
  def hitmen_params
    params.require(:hitmen).permit(:name, :price, :description, :rating)
  end

end
