require 'rails_helper'

RSpec.describe Student, type: :model do

  before :each do
    # Checar factory para verificar porque os campos são inválidos
    @empty_student = build(:student_empty)
    @invalid_student = build(:student_invalid_register)
    @student = build(:student)
  end

  it "Cadastra estudante" do
    @student.save
    expect(@student.id).not_to equal(nil)
  end

  it "Não deve cadastrar com matrícula inválida" do
    expect(@invalid_student.valid?).to equal(false)
  end 

  it "Não deve cadastrar com atributos vazios" do
    expect(@empty_student.valid?).to equal(false)
  end 
end
