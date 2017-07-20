require 'test_helper'

class FoosControllerTest < ActionController::TestCase
  setup do
    @foo = foos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foo" do
    assert_difference('Foo.count') do
      post :create, foo: { email: @foo.email, name: @foo.name }
    end

    assert_redirected_to foo_path(assigns(:foo))
  end

  test "should show foo" do
    get :show, id: @foo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foo
    assert_response :success
  end

  test "should update foo" do
    patch :update, id: @foo, foo: { email: @foo.email, name: @foo.name }
    assert_redirected_to foo_path(assigns(:foo))
  end

  test "should destroy foo" do
    assert_difference('Foo.count', -1) do
      delete :destroy, id: @foo
    end

    assert_redirected_to foos_path
  end
end
