class AddActivityToPeople < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :activity, foreign_key: true
  end
end
