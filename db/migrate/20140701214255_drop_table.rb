class DropTable < ActiveRecord::Migration
  def change
  	create_table :file_records do |t|
  		t.string :title
  end

  reversible do |dir|
    dir.up do
      execute <<-SQL
        ALTER TABLE file_records
          ADD CONSTRAINT fk_file_records_titles
          FOREIGN KEY (title_id)
          REFERENCES title(id)
        SQL
      end
    end

    dir.down do
      execute <<-SQL
        ALTER TABLE file_records
          DROP FOREIGN KEY fk_file_records_titles
        SQL
      end
    end
end
