class Version < ActiveRecord::Base
  belongs_to :product

  attr_accessible :name, :private, :state
end
