class RemoveRecordIdFromSteps < ActiveRecord::Migration

  def self.up
  	remove_column :steps, :record_id
  end

  def self.down
  	add_column :steps, :record_id, :integer
  end

end
