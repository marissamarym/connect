class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.references :user, index: true
      t.references :school, index: true
      t.string :major
      t.string :interests
      t.string :hometown
      t.text :blurb
      t.string :year
      t.integer :payment_id
      t.text :payment_details

      t.timestamps
    end
  end
end
