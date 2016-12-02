class Category < ActiveRecord::Base
  has_many :phones
  validates :brand_name,uniqueness:true, presence: true
end
