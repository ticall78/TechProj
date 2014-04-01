require File.dirname(__FILE__) + '/../test_helper'

class SuppliersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_suppliers
    assert_difference('Suppliers.count') do
      post :create, :suppliers => { }
    end

    assert_redirected_to suppliers_path(assigns(:suppliers))
  end

  def test_should_show_suppliers
    get :show, :id => suppliers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => suppliers(:one).id
    assert_response :success
  end

  def test_should_update_suppliers
    put :update, :id => suppliers(:one).id, :suppliers => { }
    assert_redirected_to suppliers_path(assigns(:suppliers))
  end

  def test_should_destroy_suppliers
    assert_difference('Suppliers.count', -1) do
      delete :destroy, :id => suppliers(:one).id
    end

    assert_redirected_to suppliers_path
  end
end
