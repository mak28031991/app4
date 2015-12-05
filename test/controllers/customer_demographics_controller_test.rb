require 'test_helper'

class CustomerDemographicsControllerTest < ActionController::TestCase
  setup do
    @customer_demographic = customer_demographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_demographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_demographic" do
    assert_difference('CustomerDemographic.count') do
      post :create, customer_demographic: { CustomerDesc: @customer_demographic.CustomerDesc }
    end

    assert_redirected_to customer_demographic_path(assigns(:customer_demographic))
  end

  test "should show customer_demographic" do
    get :show, id: @customer_demographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_demographic
    assert_response :success
  end

  test "should update customer_demographic" do
    patch :update, id: @customer_demographic, customer_demographic: { CustomerDesc: @customer_demographic.CustomerDesc }
    assert_redirected_to customer_demographic_path(assigns(:customer_demographic))
  end

  test "should destroy customer_demographic" do
    assert_difference('CustomerDemographic.count', -1) do
      delete :destroy, id: @customer_demographic
    end

    assert_redirected_to customer_demographics_path
  end
end
