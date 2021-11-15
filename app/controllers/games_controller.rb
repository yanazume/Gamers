class GamesController < ApplicationController
  def new
    @game = Game.new
  end
 # 投稿データの保存
  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    @game.save
    redirect_to game_path
  end

  def index
     @game = Game.all
  end

  def show
     #@game = Game.find(params[:id])
  end

  def destroy
  end
  # 投稿データのストロングパラメータ
   private

  def game_params
    params.require(:game).permit(:title, :category, :body)
  end
end
