class DocGroup < ActiveRecord::Base
  belongs_to :version
  belongs_to :primary_doc, :class => 'Document'

  has_many :children, :class_name => 'DocGroup', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'DocGroup'

  attr_accessible :name, :primary_doc_id, :private, :version_id

  def friendly_name
    "#{self.version.project.name} v#{self.version.name} - #{self.name}"
  end
end
