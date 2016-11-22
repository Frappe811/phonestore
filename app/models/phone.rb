class Phone < ActiveRecord::Base
  validates :name, :photo_url, :price, presence: true
end
