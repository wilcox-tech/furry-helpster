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

    # eventually, someday, recurse on children
  end

  def is_or_has(group)
    return false if group == nil
    return false if group == self.parent # quick false, reduces queries (yes, I profiled)

    self == group || self.deep_contains(group)
  end

  def friendly_name
    "#{self.version.product.name} v#{self.version.name} - #{self.name}"
  end
end
