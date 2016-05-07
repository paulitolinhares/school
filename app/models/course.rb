class Course < ActiveRecord::Base
  extend EnumerateIt
  # Callbacks
  before_create { self.status = ActivityStatus::ACTIVE }
  # Validação
  validates :name, presence: true
  # Relacionamento
  has_many :classrooms
  has_many :students, :through => :classrooms, :source => :student

  has_enumeration_for :status, with: ActivityStatus

end
