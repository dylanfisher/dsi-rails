class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :country
      t.text :bio
      t.date :class_year

      t.timestamps null: false
    end
  end
end
