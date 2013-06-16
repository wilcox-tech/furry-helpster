class DocGroup < ActiveRecord::Base
  belongs_to :version
  belongs_to :primary_doc, :class_name => 'Document'

  has_many :documents

  has_many :children, :class_name => 'DocGroup', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'DocGroup'

  attr_accessible :name, :parent_id, :primary_doc_id, :private, :version_id

  scope :all_public, where(:private => false)

  def deep_contains(group)
    self.children.include?(group)
  end

  def friendly_name
    "#{self.version.product.name} v#{self.version.name} - #{self.name}"
  end
end
