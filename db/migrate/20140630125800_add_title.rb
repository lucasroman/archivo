class AddTitle < ActiveRecord::Migration

  def change
  	add_column :file_records, :title, :string
  end
  
end
