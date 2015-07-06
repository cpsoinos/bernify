class BerniesController < ApplicationController

  def index
    @bernies = Bernie.page params[:page]
    @background = Background.new
    @backgrounds = Background.page params[:page]
    @sticker = Sticker.new
    @stickers = Sticker.page params[:page]
  end

end
