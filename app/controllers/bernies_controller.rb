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
    @bernie = Bernie.new
    @bernie.meme = create!(file: decode_url(bernie_params[:meme]))
    # @bernie = Bernie.picture_from_url(bernie_params[:image_url])
    if @bernie.save
      flash[:notice] = "Bernie saved!"
      redirect_to bernies_path
    else
      render :index, notice: "Error"
    end
  end

  def show
    @bernie = Bernie.find(params[:id])
  end

  private

  def bernie_params
    params.require(:bernie).permit(:meme)
  end

  def decode_url(url)
    binding.pry
    file = open(url) { |f| f.read }
    Base64.decode64(file)
  end

end
