class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :name
      t.string :code

      t.timestamps null: false
    end
  end
end
