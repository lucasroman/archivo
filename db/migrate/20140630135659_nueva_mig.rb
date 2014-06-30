class NuevaMig < ActiveRecord::Migration
  def change
  	add_column :steps, :record_id, :integer
  end
end
