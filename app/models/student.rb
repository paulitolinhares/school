class Student < ActiveRecord::Base
  extend EnumerateIt
  # Callbacks
  before_create { self.status = ActivityStatus::ACTIVE }
  # Validações
  NUMBERS_REGEX = /\A[+-]?\d+\Z/
  validates :name, presence: true
  validates :register_number, presence: true, format: { with: NUMBERS_REGEX }
  # Relacionamento
  has_many :classrooms
  has_many :courses, :through => :classrooms, :source => :course

  has_enumeration_for :status, with: ActivityStatus

  # attr_accessor :status
end
