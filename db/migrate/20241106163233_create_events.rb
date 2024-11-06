class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.boolean :avalible_tickets
      t.datetime :date
      t.integer :capacity

      t.timestamps
    end
  end
end
