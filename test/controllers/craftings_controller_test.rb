require 'test_helper'

class CraftingsControllerTest < ActionController::TestCase
  setup do
    @crafting = craftings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:craftings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crafting" do
    assert_difference('Crafting.count') do
      post :create, crafting: { description: @crafting.description, image: @crafting.image, title: @crafting.title }
    end

    assert_redirected_to crafting_path(assigns(:crafting))
  end

  test "should show crafting" do
    get :show, id: @crafting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crafting
    assert_response :success
  end

  test "should update crafting" do
    patch :update, id: @crafting, crafting: { description: @crafting.description, image: @crafting.image, title: @crafting.title }
    assert_redirected_to crafting_path(assigns(:crafting))
  end

  test "should destroy crafting" do
    assert_difference('Crafting.count', -1) do
      delete :destroy, id: @crafting
    end

    assert_redirected_to craftings_path
  end
end
