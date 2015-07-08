class Bernie < ActiveRecord::Base
  has_many :backgrounds
  has_many :stickers

  validates :image_url, presence: true
end
