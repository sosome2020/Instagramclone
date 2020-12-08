class FavoritesController < ApplicationController
  def index
    @favorites=Favorite.all
  end

  def create
    favorite = current_user.favorites.create(feed_id: params[:feed_id])
    redirect_to feeds_url, notice: "#{favorite.feed.user.name}'S feed has been added to favorites"
  end
  
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to feeds_url, notice: "Unliked Mr. #{favorite.feed.user.name}'s feed"
  end
end
