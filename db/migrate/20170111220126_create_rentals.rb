class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :movie, index: true
      t.date :checkout_date
      t.date :due_date

      t.timestamps
    end
  end
end
