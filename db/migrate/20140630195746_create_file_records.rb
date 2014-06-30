class CreateFileRecords < ActiveRecord::Migration
  def change
    create_table :file_records do |t|

      t.timestamps
    end
  end
end
