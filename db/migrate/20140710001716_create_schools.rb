class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :email
      t.string :phone
      t.string :website
      t.string :details_url

      t.timestamps
    end
  end
end
