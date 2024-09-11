class CreateCalendars < ActiveRecord::Migration[7.0]
  create_table :calendars do |t|
    t.string :calendar_event
    
    t.references :user, null: false, foreign_key: true

    t.timestamps
  end
end
