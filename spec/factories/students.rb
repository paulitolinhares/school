FactoryGirl.define do
  factory :student do
    name "José da Silva"
    register_number "766854"
    status 1
  end

  factory :student2, class: Student do
    name "Paulo Linhares"
    register_number "766858"
    status 1
  end

  factory :student_invalid_register, class: Student do
    # Nome Vazio
    name "Nome bom"
    # Matrícula com letras
    register_number "1o2i31"
    status 1
  end

  factory :student_empty, class: Student do
    # Nome Vazio
    name "    "
    # Matrícula vazia
    register_number "     "
    status 1
  end
end
