class AddUserToEvent < ActiveRecord::Migration[7.2]
  def change
    add_reference :events, :User, null: false, foreign_key: true
  end
end
