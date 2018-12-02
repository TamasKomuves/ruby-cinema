class CreateScreenings < ActiveRecord::Migration[5.2]
  def change
    create_table :screenings do |t|
      t.references :movie, foreign_key: true
      t.datetime :date
      t.integer :price
      t.references :auditorium, foreign_key: true

      t.timestamps
    end
  end
end
