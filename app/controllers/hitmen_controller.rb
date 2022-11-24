class HitmenController < ApplicationController
  before_action :set_hitman, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @hitmen = Hitman.where(method: params[:query])

    else
      @hitmen = Hitman.all
    end
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
    if @hitman.save
      redirect_to hitman_path(@hitman)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @hitman.update(hitman_params)
    # Redirect to hitman's profile
    redirect_to hitman_path(@hitman)
  end

  def destroy
    @hitman.destroy
    redirect_to user_path, status: :see_other
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:id])
  end

  def hitman_params
    params.require(:hitman).permit(:name, :price, :description, :rating, :method, :photo)
  end
end
