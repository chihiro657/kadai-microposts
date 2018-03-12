class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favocontent(micropost)
    flash[:success] = "お気に入りに追加しました。"
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavocontent(micropost)
    flash.now[:danger] = "お気に入りを解除しました。"
    redirect_to root_url
  end
end
