class HitmenController < ApplicationController

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
end
