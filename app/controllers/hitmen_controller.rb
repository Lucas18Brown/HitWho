class HitmenController < ApplicationController
  before_action :set_hitman, only: %i[show]
  def index
    @hitmen = Hitman.all
  end

  def show
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:id])
  end
end
