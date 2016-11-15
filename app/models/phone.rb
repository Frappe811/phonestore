class Phone < ActiveRecord::Base
  validates :name, presence: true
end
