class Phone < ActiveRecord::Base
  belongs_to :category
  include PgSearch
  pg_search_scope :search_by_name, :against => :name
  validates :name, :photo_url, :price, :category_id, presence: true
  validates :name, length:{minimum: 2, maximum: 100}, uniqueness:true
  validates :price , numericality: {greater_than: 0}
  validates :description , length:{minimum: 50}
end
