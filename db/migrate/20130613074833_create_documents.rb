class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :doc_group_id
      t.string :name
      t.text :content
      t.boolean :private, :default => false

      t.timestamps
    end
  end
end
