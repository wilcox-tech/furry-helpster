class Product < ActiveRecord::Base
  attr_accessible :name, :private

  scope :all_public, where(:private => false)

  def current_version
    Version.where(:product_id => self.id, :state => :current).first
  end
end
