class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_lines
  include PgSearch
  pg_search_scope :search_by_order, :associated_against => {:user => [:name]}, :against => :id,
                  :using => {:tsearch => {:prefix => true}}
end
