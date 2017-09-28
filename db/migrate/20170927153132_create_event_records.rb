class CreateEventRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :event_records do |t|
      t.integer :hero_id
      t.integer :event_id

      t.timestamps
    end
  end
end
