class Category < ActiveRecord::Base
  has_many :phones
  include PgSearch
  pg_search_scope :search_by_brand_name, :against => :brand_name, :using => {:tsearch => {:prefix => true}}
  validates :brand_name,uniqueness:true, presence: true
end
