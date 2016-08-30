class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.references :employment_status, index: true, foreign_key: true
      t.references :department, index: true, foreign_key: true
      t.references :title, index: true, foreign_key: true
      t.references :enrollment, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
