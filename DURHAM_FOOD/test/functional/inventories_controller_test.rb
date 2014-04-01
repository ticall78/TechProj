require File.dirname(__FILE__) + '/../test_helper'

class InventoriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inventories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_inventories
    assert_difference('Inventories.count') do
      post :create, :inventories => { }
    end

    assert_redirected_to inventories_path(assigns(:inventories))
  end

  def test_should_show_inventories
    get :show, :id => inventories(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => inventories(:one).id
    assert_response :success
  end

  def test_should_update_inventories
    put :update, :id => inventories(:one).id, :inventories => { }
    assert_redirected_to inventories_path(assigns(:inventories))
  end

  def test_should_destroy_inventories
    assert_difference('Inventories.count', -1) do
      delete :destroy, :id => inventories(:one).id
    end

    assert_redirected_to inventories_path
  end
end
