class BackgroundsController < ApplicationController
  # 
  # def index
  #   @backgrounds = Background.page params[:page]
  # end

  def create
    @background = Background.new(background_params)
    if @background.save
      flash[:notice] = "Background saved!"
      redirect_to bernies_path
    else
      render 'bernies/index', locals: { :@sticker => Sticker.new }
    end
  end

  private

  def background_params
    params.require(:background).permit(:image)
  end

end
