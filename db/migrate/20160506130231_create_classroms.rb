class CreateClassroms < ActiveRecord::Migration
  def change
    create_table :classroms, :id => false do |t|
      t.references :students
      t.references :courses
      t.datetime :entry_at
    end
  end
end
