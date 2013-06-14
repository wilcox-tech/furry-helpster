class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :product_id
      t.string :name
      t.string :state
      t.boolean :private, :default => false

      t.timestamps
    end
  end
end
