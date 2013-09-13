class CreateCourses < ActiveRecord::Migration
   def change
    create_table :courses do |t|
      t.string :name
      t.string :content
      t.integer :student_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
