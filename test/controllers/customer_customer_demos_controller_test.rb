require 'test_helper'

class CustomerCustomerDemosControllerTest < ActionController::TestCase
  setup do
    @customer_customer_demo = customer_customer_demos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_customer_demos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_customer_demo" do
    assert_difference('CustomerCustomerDemo.count') do
      post :create, customer_customer_demo: { CustomerID: @customer_customer_demo.CustomerID, CustomerTypeID: @customer_customer_demo.CustomerTypeID }
    end

    assert_redirected_to customer_customer_demo_path(assigns(:customer_customer_demo))
  end

  test "should show customer_customer_demo" do
    get :show, id: @customer_customer_demo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_customer_demo
    assert_response :success
  end

  test "should update customer_customer_demo" do
    patch :update, id: @customer_customer_demo, customer_customer_demo: { CustomerID: @customer_customer_demo.CustomerID, CustomerTypeID: @customer_customer_demo.CustomerTypeID }
    assert_redirected_to customer_customer_demo_path(assigns(:customer_customer_demo))
  end

  test "should destroy customer_customer_demo" do
    assert_difference('CustomerCustomerDemo.count', -1) do
      delete :destroy, id: @customer_customer_demo
    end

    assert_redirected_to customer_customer_demos_path
  end
end
