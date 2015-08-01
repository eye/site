class AddFrequencyToEyes < ActiveRecord::Migration
  def change
    change_table :eyes do |t|
      t.integer :frequency
    end
  end
end
