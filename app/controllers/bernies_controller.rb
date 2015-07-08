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
    @bernie = Bernie.create(image_url: params[:img])
    if @bernie.save
      flash[:notice] = "Bernie saved!"
      redirect_to bernie_path(@bernie)
    else
      render :index, notice: "Error"
    end
  end

  def show
    @bernie = Bernie.find(params[:id])
  end

  # private
  #
  # def bernie_params
  #   params.require(:bernie).permit(:img)
  # end

end
