require 'test_helper'

class ServiceTubesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_tube = service_tubes(:one)
  end

  test "should get index" do
    get service_tubes_url
    assert_response :success
  end

  test "should get new" do
    get new_service_tube_url
    assert_response :success
  end

  test "should create service_tube" do
    assert_difference('ServiceTube.count') do
      post service_tubes_url, params: { service_tube: { name: @service_tube.name } }
    end

    assert_redirected_to service_tube_url(ServiceTube.last)
  end

  test "should show service_tube" do
    get service_tube_url(@service_tube)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_tube_url(@service_tube)
    assert_response :success
  end

  test "should update service_tube" do
    patch service_tube_url(@service_tube), params: { service_tube: { name: @service_tube.name } }
    assert_redirected_to service_tube_url(@service_tube)
  end

  test "should destroy service_tube" do
    assert_difference('ServiceTube.count', -1) do
      delete service_tube_url(@service_tube)
    end

    assert_redirected_to service_tubes_url
  end
end
