require File.dirname(__FILE__) + '/../test_helper'

class StatusesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:statuses)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_statuses
    assert_difference('Statuses.count') do
      post :create, :statuses => { }
    end

    assert_redirected_to statuses_path(assigns(:statuses))
  end

  def test_should_show_statuses
    get :show, :id => statuses(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => statuses(:one).id
    assert_response :success
  end

  def test_should_update_statuses
    put :update, :id => statuses(:one).id, :statuses => { }
    assert_redirected_to statuses_path(assigns(:statuses))
  end

  def test_should_destroy_statuses
    assert_difference('Statuses.count', -1) do
      delete :destroy, :id => statuses(:one).id
    end

    assert_redirected_to statuses_path
  end
end
