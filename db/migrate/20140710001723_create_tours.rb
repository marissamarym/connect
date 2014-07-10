class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.references :tour_request, index: true
      t.decimal :guide_percentage
      t.decimal :price
      t.boolean :canceled
      t.text :notes
      t.datetime :scheduled_time
      t.boolean :paid
      t.text :private_notes

      t.timestamps
    end
  end
end
