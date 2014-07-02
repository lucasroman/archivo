class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|

      t.integer :file_record_id
      t.integer :person_id
      t.integer :office_id
      t.timestamps
    end
  end
end
