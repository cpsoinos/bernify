class Bernie < ActiveRecord::Base
  has_many :backgrounds, presence: true
  has_many :stickers, presence: true
end
