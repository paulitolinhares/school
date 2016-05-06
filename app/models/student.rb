class Student < ActiveRecord::Base
  NUMBERS_REGEX = /\A[+-]?\d+\Z/
  validates :name, presence: true
  validates :register_number, presence: true, format: { with: NUMBERS_REGEX }
end
