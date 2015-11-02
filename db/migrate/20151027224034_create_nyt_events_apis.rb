class CreateNytEventsApis < ActiveRecord::Migration
  def change
    create_table :nyt_events_apis do |t|

      t.timestamps null: false
    end
  end
end
