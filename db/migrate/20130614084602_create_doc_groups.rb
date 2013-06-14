class CreateDocGroups < ActiveRecord::Migration
  def change
    create_table :doc_groups do |t|
      t.integer :version_id
      t.string :name
      t.boolean :private, :default => false
      t.integer :parent_id
      t.integer :primary_doc_id

      t.timestamps
    end
  end
end
