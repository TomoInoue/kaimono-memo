require 'test_helper'

class CommmentsControllerTest < ActionController::TestCase
  setup do
    @commment = commments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commment" do
    assert_difference('Commment.count') do
      post :create, commment: { body: @commment.body, idea_id: @commment.idea_id, user_name: @commment.user_name }
    end

    assert_redirected_to commment_path(assigns(:commment))
  end

  test "should show commment" do
    get :show, id: @commment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commment
    assert_response :success
  end

  test "should update commment" do
    patch :update, id: @commment, commment: { body: @commment.body, idea_id: @commment.idea_id, user_name: @commment.user_name }
    assert_redirected_to commment_path(assigns(:commment))
  end

  test "should destroy commment" do
    assert_difference('Commment.count', -1) do
      delete :destroy, id: @commment
    end

    assert_redirected_to commments_path
  end
end
