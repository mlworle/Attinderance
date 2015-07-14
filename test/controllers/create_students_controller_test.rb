require 'test_helper'

class CreateStudentsControllerTest < ActionController::TestCase
  setup do
    @create_student = create_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_student" do
    assert_difference('CreateStudent.count') do
      post :create, create_student: { first_name: @create_student.first_name, last_name: @create_student.last_name }
    end

    assert_redirected_to create_student_path(assigns(:create_student))
  end

  test "should show create_student" do
    get :show, id: @create_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_student
    assert_response :success
  end

  test "should update create_student" do
    patch :update, id: @create_student, create_student: { first_name: @create_student.first_name, last_name: @create_student.last_name }
    assert_redirected_to create_student_path(assigns(:create_student))
  end

  test "should destroy create_student" do
    assert_difference('CreateStudent.count', -1) do
      delete :destroy, id: @create_student
    end

    assert_redirected_to create_students_path
  end
end
