class CreateFileRecords < ActiveRecord::Migration
  def change
    create_table :file_records do |t|
      add_column :title, :string 
      t.timestamps
    end
  end
end
