class CreateMeetups < ActiveRecord::Migration[6.1]
  def change
    create_table :meetups do |t|
      t.string :date
      t.integer :time
      t.string :location
      t.string :title
      t.text :description
      t.integer :interested_count

      t.timestamps
    end
  end
end
