class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :private, :default => false

      t.timestamps
    end
  end
end
