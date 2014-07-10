class CreateTourRequests < ActiveRecord::Migration
  def change
    create_table :tour_requests do |t|
      t.references :guide, index: true
      t.string :type
      t.references :visit, index: true

      t.timestamps
    end
  end
end
