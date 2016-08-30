class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :code
      t.integer :parent_id, :default => nil
      t.integer :corporation_id, :default => 1
      t.date :start_date
      t.date :end_date

      t.references :corporation, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
