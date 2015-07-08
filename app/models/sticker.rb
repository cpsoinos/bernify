require 'base64'
require 'net/http'

class Sticker < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :bernie

  # def proxy_url
  #   type = image.url.split("?").first.delete(".")
  #   encoded_url = Base64.encode64(image.url)
  #   binding.pry
  #   image = "data:image/#{type};base64,#{encoded_url}"
  #   send_data image, type: "image/#{type}", disposition: "inline"
  # end

end
