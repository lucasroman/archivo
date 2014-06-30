class AddOfficeToStep < ActiveRecord::Migration

  def change
    add_column :steps, :office_id, :integer
    add_column :steps, :person_id, :integer
    add_column :steps, :file_record_id, :integer
  end
  
end
