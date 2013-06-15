class Version < ActiveRecord::Base
  belongs_to :product

  attr_accessible :name, :private, :state

  def friendly_name
    "#{self.product.name} v#{self.name}"
  end
end
