class StickersController < ApplicationController
  # 
  # def index
  #   @stickers = Sticker.page params[:page]
  # end

  def create
    @sticker = Sticker.new(sticker_params)
    if @sticker.save
      flash[:notice] = "Sticker created!"
      redirect_to bernies_path
    else
      render 'bernies/index', locals: { :@background => Background.new }
    end
  end

  private

  def sticker_params
    params.require(:sticker).permit(:image)
  end

end
