class AddActivityToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :activity, foreign_key: true
  end
end
