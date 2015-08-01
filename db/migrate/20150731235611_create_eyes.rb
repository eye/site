class CreateEyes < ActiveRecord::Migration
  def change
    create_table :eyes do |t|
      t.string :type
      t.string :status
      t.string :status_message
      t.boolean :active
      t.boolean :deleted
      t.text :metadata
      t.integer :created_by
      t.integer :updated_by

      t.index :type
      t.index :active
      t.index :deleted
      t.index :created_by

      t.timestamps null: false
    end
  end
end
