require 'test_helper'

class CarrersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrer = carrers(:one)
  end

  test "should get index" do
    get carrers_url
    assert_response :success
  end

  test "should get new" do
    get new_carrer_url
    assert_response :success
  end

  test "should create carrer" do
    assert_difference('Carrer.count') do
      post carrers_url, params: { carrer: { name: @carrer.name, points: @carrer.points, user_id: @carrer.user_id } }
    end

    assert_redirected_to carrer_url(Carrer.last)
  end

  test "should show carrer" do
    get carrer_url(@carrer)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrer_url(@carrer)
    assert_response :success
  end

  test "should update carrer" do
    patch carrer_url(@carrer), params: { carrer: { name: @carrer.name, points: @carrer.points, user_id: @carrer.user_id } }
    assert_redirected_to carrer_url(@carrer)
  end

  test "should destroy carrer" do
    assert_difference('Carrer.count', -1) do
      delete carrer_url(@carrer)
    end

    assert_redirected_to carrers_url
  end
end
