class RenameEyeTypeColumn < ActiveRecord::Migration
  def change
    change_table :eyes do |t|
      t.rename :type, :klass
    end
  end
end
