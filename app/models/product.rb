class Product < ActiveRecord::Base
  attr_accessible :name, :private

  scope :all_public, where(:private => false)
end
