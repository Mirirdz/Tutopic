require 'test_helper'

class SubjectCarrerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_carrer_user = subject_carrer_users(:one)
  end

  test "should get index" do
    get subject_carrer_users_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_carrer_user_url
    assert_response :success
  end

  test "should create subject_carrer_user" do
    assert_difference('SubjectCarrerUser.count') do
      post subject_carrer_users_url, params: { subject_carrer_user: { carreruser_id: @subject_carrer_user.carreruser_id, points: @subject_carrer_user.points, subject_id: @subject_carrer_user.subject_id } }
    end

    assert_redirected_to subject_carrer_user_url(SubjectCarrerUser.last)
  end

  test "should show subject_carrer_user" do
    get subject_carrer_user_url(@subject_carrer_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_carrer_user_url(@subject_carrer_user)
    assert_response :success
  end

  test "should update subject_carrer_user" do
    patch subject_carrer_user_url(@subject_carrer_user), params: { subject_carrer_user: { carreruser_id: @subject_carrer_user.carreruser_id, points: @subject_carrer_user.points, subject_id: @subject_carrer_user.subject_id } }
    assert_redirected_to subject_carrer_user_url(@subject_carrer_user)
  end

  test "should destroy subject_carrer_user" do
    assert_difference('SubjectCarrerUser.count', -1) do
      delete subject_carrer_user_url(@subject_carrer_user)
    end

    assert_redirected_to subject_carrer_users_url
  end
end
