class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_title
      t.datetime :start_time
      t.string :location
      t.text :description
      t.text :attendance_status
      
      t.timestamps
    end
  end
end
