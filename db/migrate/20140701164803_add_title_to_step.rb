class AddTitleToStep < ActiveRecord::Migration
  def change
    add_column :title, :string
  end
end
