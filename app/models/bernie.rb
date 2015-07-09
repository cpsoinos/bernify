class Bernie < ActiveRecord::Base
  has_many :backgrounds
  has_many :stickers
  has_attached_file :meme, styles: { medium: "300x300>", thumb: "100x100>" }

  # validates :image_url, presence: true

  def self.picture_from_url(url)
    binding.pry
    URI.parse(url)
  end

end
