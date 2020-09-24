class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :name, null: false
      t.date :event_day
      t.time :start
      t.time :endDate
      t.string :place
      t.string :content
      t.string :mine
      t.timestamps
    end
  end
end
