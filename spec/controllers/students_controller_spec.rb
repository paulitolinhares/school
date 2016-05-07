require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe StudentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Student. As you add validations to Student, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for(:student)
  }

  let(:invalid_attributes) {
    attributes_for(:student_empty)
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StudentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all students as @students" do
      student = Student.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:students)).to eq([student])
    end
  end

  describe "GET #show" do
    it "assigns the requested student as @student" do
      student = Student.create! valid_attributes
      get :show, {:id => student.to_param}, valid_session
      expect(assigns(:student)).to eq(student)
    end
  end

  describe "GET #new" do
    it "assigns a new student as @student" do
      get :new, {}, valid_session
      expect(assigns(:student)).to be_a_new(Student)
    end
  end

  describe "GET #edit" do
    it "assigns the requested student as @student" do
      student = Student.create! valid_attributes
      get :edit, {:id => student.to_param}, valid_session
      expect(assigns(:student)).to eq(student)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Student" do
        expect {
          post :create, {:student => valid_attributes}, valid_session
        }.to change(Student, :count).by(1)
      end

      it "assigns a newly created student as @student" do
        post :create, {:student => valid_attributes}, valid_session
        expect(assigns(:student)).to be_a(Student)
        expect(assigns(:student)).to be_persisted
      end

      it "redirects to the created student" do
        post :create, {:student => valid_attributes}, valid_session
        expect(response).to redirect_to(Student.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved student as @student" do
        post :create, {:student => invalid_attributes}, valid_session
        expect(assigns(:student)).to be_a_new(Student)
      end

      it "re-renders the 'new' template" do
        post :create, {:student => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        attributes_for(:student2)
      }

      it "updates the requested student" do
        student = Student.create! valid_attributes
        put :update, {:id => student.to_param, :student => new_attributes}, valid_session
        student.reload
        expect(student.name).to eq(attributes_for(:student2)[:name])
      end

      it "assigns the requested student as @student" do
        student = Student.create! valid_attributes
        put :update, {:id => student.to_param, :student => valid_attributes}, valid_session
        expect(assigns(:student)).to eq(student)
      end

      it "redirects to the student" do
        student = Student.create! valid_attributes
        put :update, {:id => student.to_param, :student => valid_attributes}, valid_session
        expect(response).to redirect_to(student)
      end
    end

    context "with invalid params" do
      it "assigns the student as @student" do
        student = Student.create! valid_attributes
        put :update, {:id => student.to_param, :student => invalid_attributes}, valid_session
        expect(assigns(:student)).to eq(student)
      end

      it "re-renders the 'edit' template" do
        student = Student.create! valid_attributes
        put :update, {:id => student.to_param, :student => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested student" do
      student = Student.create! valid_attributes
      expect {
        delete :destroy, {:id => student.to_param}, valid_session
      }.to change(Student, :count).by(-1)
    end

    it "redirects to the students list" do
      student = Student.create! valid_attributes
      delete :destroy, {:id => student.to_param}, valid_session
      expect(response).to redirect_to(students_url)
    end
  end

end