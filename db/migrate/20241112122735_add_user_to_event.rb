class AddUserToEvent < ActiveRecord::Migration[7.2]
  def change
    add_reference :events, :user_id, null: true, foreign_key: true
  end
end
