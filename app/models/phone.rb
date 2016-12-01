class Phone < ActiveRecord::Base
  validates :name, :photo_url, :price, presence: true
  belongs_to :category
  include PgSearch
  pg_search_scope :search_by_name, :against => :name
end
