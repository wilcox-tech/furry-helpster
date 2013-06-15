class Version < ActiveRecord::Base
  belongs_to :product

  attr_accessible :name, :private, :state

  scope :all_public, where(:private => false)

  def friendly_name
    "#{self.product.name} v#{self.name}"
  end
end
