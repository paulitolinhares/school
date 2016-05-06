require 'rails_helper'

RSpec.describe Course, type: :model do
  before :each do
    # Curso com o nome vazio
    @empty_course = build(:course_empty_name)
    # Curso válido
    @course = build(:course)
  end

  it "Cadastra curso vazio" do
    @course.save
    expect(@course.id).not_to equal(nil)
  end

  it "Não deve cadastrar com o nome vazio" do
    expect(@empty_course.valid?).to equal(false)
  end 
end
