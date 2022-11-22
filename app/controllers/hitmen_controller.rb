class HitmenController < ApplicationController
  before_action :set_hitman, only: %i[show destroy]

  def index
    @hitmen = Hitman.all
  end

  def show
  end

  def new
    @hitman = Hitman.new
  end

  def create
    @hitman = Hitman.new(hitman_params)
    @hitman.user = current_user
    @hitman.save
    redirect_to hitman_path(@hitman)
  end
  
  def edit
    # searching instance of Hitman through its id
    @hitman = Hitman.find(params[:id])
  end

  def update
    @hitman = Hitman.find(hitmen_params)
    @hitman.update(@hitman)
    # Redirect to hitman's profile
    redirect_to hitman_path(@hitman)
  end

  def destroy
    @hitman.destroy
    redirect_to hitmen_path, status: :see_other
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:id])
  end

  def hitman_params
    params.require(:hitman).permit(:name, :price, :description, :rating)
  end
end
