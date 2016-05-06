class Classroom < ActiveRecord::Base
  self.table_name = "classrooms"
  belongs_to :student
  belongs_to :course
end
