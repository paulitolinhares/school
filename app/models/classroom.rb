class Classroom < ActiveRecord::Base
  self.table_name = "classrooms"
  belongs_to :student
  belongs_to :course

  after_create :set_entry_at

  def set_entry_at
    self.entry_at = Time.now
  end
end
