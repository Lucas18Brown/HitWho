class HitmenController < ApplicationController

  def destroy
    @hitman = Hitman.find(params[:id])
    @hitman.destroy
    redirect_to hitmen_path,
    status: :see_other
  end

end
