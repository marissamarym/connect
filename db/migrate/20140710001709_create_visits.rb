class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :type
      t.text :notes
      t.references :prospie, index: true
      t.references :school, index: true

      t.timestamps
    end
  end
end
