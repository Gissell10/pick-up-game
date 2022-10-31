class AddArrivalTimeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :arrival_time, :time
  end
end
