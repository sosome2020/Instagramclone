class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(feed_id: params[:feed_id])
    redirect_to feeds_url, notice: "a feed has been added to favorites"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to feeds_url, notice: "# a feed has been Unliked Mr.'s feed"
  end
end
