class RemoveTitleFromRecords < ActiveRecord::Migration
  def change
    remove_column :records, :title, :string
  end
end
