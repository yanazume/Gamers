class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    @user = @game.user
    @newgame = Game.new
    @post_comment = PostComment.new
  end
  def new
    @game = Game.new
  end
 # 投稿データの保存
  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
   if @game.save
     flash[:notice]="You have creatad book successfully."
     redirect_to game_path(@game)
   else
      @user = current_user
      @games = Game.all
   end
  end

  def index
    @user = current_user
    @game = Game.new
    @games = Game.all
  end



  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  # 投稿データのストロングパラメータ
   private

  def game_params
    params.require(:game).permit(:title, :category, :body)
  end
end
