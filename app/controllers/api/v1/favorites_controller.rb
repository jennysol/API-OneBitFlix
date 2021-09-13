class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: :destroy

  def index
    @favorites = current_user.favorites
    render json: Api::V1::WatchableSerializer.new(@favorites.map(&:favoritable)).serialized_json
  end
   
  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
     head :ok
    else
     render json: { errors: @favorite.errors.full_messages }, status: :unprocessable_entity
    end
  end
   
  def destroy
    @favorite.destroy
    head :ok
  end
   
  private
   
    def set_favorite
      @favorite = Favorite.find_by(favoritable_type: params[:type].capitalize!, 
        favoritable_id: params[:id], user: current_user)
    end
    
    def favorite_params
      params.require(:favorite).permit(:favoritable_type, :favoritable_id).merge(user: current_user)
    end
end
