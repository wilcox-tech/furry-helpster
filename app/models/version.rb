class Version < ActiveRecord::Base
  belongs_to :product
  has_many :doc_groups

  attr_accessible :name, :private, :product_id, :state

  scope :all_public, where(:private => false)

  def friendly_name
    "#{self.product.name} v#{self.name}"
  end

  def head_groups
    self.doc_groups.where(:parent_id => nil).includes(:children)
  end
end
