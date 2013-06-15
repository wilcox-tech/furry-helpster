class Document < ActiveRecord::Base
  belongs_to :doc_group

  attr_accessible :content, :name, :private

  scope :all_public, where(:private => false)
end
