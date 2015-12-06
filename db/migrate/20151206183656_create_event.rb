class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :startDate, null: false
      t.string :endDate, null: false
      t.string :players, null: false
      t.string :scoreType, null: false
      t.string :flights, null: false
      t.string :cut, null: false
      t.string :hometown, null: false
      t.integer :handicap
      t.string :dotCard
      t.string :includeTies
      t.string :includeTen
    end
  end
end
