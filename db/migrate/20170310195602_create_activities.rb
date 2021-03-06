class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :category 
      t.string :event_name
      t.string :location
      t.date :date
      t.string :blurb
      t.time :time
      t.integer :price
    end
  end
end
