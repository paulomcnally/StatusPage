require 'test_helper'

class ComponentStatusesControllerTest < ActionController::TestCase
  setup do
    @component_status = component_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_status" do
    assert_difference('ComponentStatus.count') do
      post :create, component_status: { color: @component_status.color, description: @component_status.description, name: @component_status.name }
    end

    assert_redirected_to component_status_path(assigns(:component_status))
  end

  test "should show component_status" do
    get :show, id: @component_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @component_status
    assert_response :success
  end

  test "should update component_status" do
    patch :update, id: @component_status, component_status: { color: @component_status.color, description: @component_status.description, name: @component_status.name }
    assert_redirected_to component_status_path(assigns(:component_status))
  end

  test "should destroy component_status" do
    assert_difference('ComponentStatus.count', -1) do
      delete :destroy, id: @component_status
    end

    assert_redirected_to component_statuses_path
  end
end
