class AddNameToEye < ActiveRecord::Migration
  def change
    change_table :eyes do |t|
      t.string :name
    end
  end
end
