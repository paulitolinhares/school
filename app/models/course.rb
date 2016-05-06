class Course < ActiveRecord::Base
  # Validação
  validates :name, presence: true

  # Relacionamento
  has_many :classrooms
  has_many :students, :through => :classrooms, :source => :student

end
