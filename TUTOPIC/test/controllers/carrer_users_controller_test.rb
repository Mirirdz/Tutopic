require 'test_helper'

class CarrerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrer_user = carrer_users(:one)
  end

  test "should get index" do
    get carrer_users_url
    assert_response :success
  end

  test "should get new" do
    get new_carrer_user_url
    assert_response :success
  end

  test "should create carrer_user" do
    assert_difference('CarrerUser.count') do
      post carrer_users_url, params: { carrer_user: { carrer_id: @carrer_user.carrer_id, points: @carrer_user.points, user_id: @carrer_user.user_id } }
    end

    assert_redirected_to carrer_user_url(CarrerUser.last)
  end

  test "should show carrer_user" do
    get carrer_user_url(@carrer_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrer_user_url(@carrer_user)
    assert_response :success
  end

  test "should update carrer_user" do
    patch carrer_user_url(@carrer_user), params: { carrer_user: { carrer_id: @carrer_user.carrer_id, points: @carrer_user.points, user_id: @carrer_user.user_id } }
    assert_redirected_to carrer_user_url(@carrer_user)
  end

  test "should destroy carrer_user" do
    assert_difference('CarrerUser.count', -1) do
      delete carrer_user_url(@carrer_user)
    end

    assert_redirected_to carrer_users_url
  end
end
