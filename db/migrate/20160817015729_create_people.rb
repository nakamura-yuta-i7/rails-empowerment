class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.references :employment_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
