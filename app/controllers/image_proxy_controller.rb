require 'base64'
require 'net/http'

class ImageProxyController < ActionController::Base
  def proxify
    file = open(params[:image_url]) { |f| f.read }
    type = File.extname(params[:image_url]).split("?").first
    encoded_url = Base64.encode64(file)
    image = "data:image/#{get_image_file_type(params[:image_url])};base64,#{encoded_url}"
    send_data image, type: "image/#{type}", disposition: 'inline'
  end

  private

  def get_image_file_type(src)

  end

end
