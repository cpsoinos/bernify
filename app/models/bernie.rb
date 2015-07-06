class Bernie < ActiveRecord::Base
  has_many :backgrounds
  has_many :stickers
end
