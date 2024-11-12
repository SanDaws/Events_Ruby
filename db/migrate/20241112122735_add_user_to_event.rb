class AddUserToEvent < ActiveRecord::Migration[7.2]
  def change
    add_reference :events, :users, null: true, foreign_key: true
  end
end
