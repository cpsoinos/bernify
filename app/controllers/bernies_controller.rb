class BerniesController < ApplicationController
  respond_to :html, :js


  def index
    @bernies = Bernie.page params[:page]
    @background = Background.new
    @backgrounds = Background.page params[:page]
    @sticker = Sticker.new
    @stickers = Sticker.page params[:page]
  end

  def create
    @bernie = Bernie.new(params[:img])
    render nothing: true
  end

  # private
  #
  # def bernie_params
  #   params.require(:bernie).permit(:img)
  # end

end
