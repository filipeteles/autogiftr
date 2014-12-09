class AddColumnToOccasion < ActiveRecord::Migration
  def change
    add_column :occasions, :delivered, :boolean
  end
end
