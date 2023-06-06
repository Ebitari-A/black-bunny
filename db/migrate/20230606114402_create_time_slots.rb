class CreateTimeSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :time_slots do |t|
      t.time :start_time
      t.time :end_time
      t.integer :slot_capacity
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
