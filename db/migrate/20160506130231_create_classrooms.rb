class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms, :id => false do |t|
      t.belongs_to :student
      t.belongs_to :course
      t.datetime :entry_at
    end
  end
end
