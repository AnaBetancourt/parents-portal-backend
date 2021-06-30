class ChangeMeetupColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :meetups, :time, :string
  end
end
