class CreateProspies < ActiveRecord::Migration
  def change
    create_table :prospies do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
