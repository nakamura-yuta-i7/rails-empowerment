class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name
      t.string :code
      t.date :start_date
      t.date :end_date
      
      t.timestamps null: false
    end
  end
end
