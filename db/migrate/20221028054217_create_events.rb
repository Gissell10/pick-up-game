class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :title
      t.date :appointed
      t.integer :sport_id
      t.text :description
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
