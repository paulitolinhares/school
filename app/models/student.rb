class Student < ActiveRecord::Base

  #Validações
  NUMBERS_REGEX = /\A[+-]?\d+\Z/
  validates :name, presence: true
  validates :register_number, presence: true, format: { with: NUMBERS_REGEX }

  # Relacionamento
  has_many :classrooms
  has_many :courses, :through => :classrooms, :source => :course
end
