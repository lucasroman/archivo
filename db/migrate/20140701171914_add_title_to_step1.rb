class AddTitleToStep1 < ActiveRecord::Migration
  def change
    add_column :step1s, :title, :string
  end
end
