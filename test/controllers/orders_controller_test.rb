require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { CustomerID: @order.CustomerID, EmployeeID: @order.EmployeeID, Freight: @order.Freight, OrderDate: @order.OrderDate, RequiredDate: @order.RequiredDate, ShipAddress: @order.ShipAddress, ShipCity: @order.ShipCity, ShipCountry: @order.ShipCountry, ShipName: @order.ShipName, ShipPostalCode: @order.ShipPostalCode, ShipRegion: @order.ShipRegion, ShipVia: @order.ShipVia, ShippedDate: @order.ShippedDate }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { CustomerID: @order.CustomerID, EmployeeID: @order.EmployeeID, Freight: @order.Freight, OrderDate: @order.OrderDate, RequiredDate: @order.RequiredDate, ShipAddress: @order.ShipAddress, ShipCity: @order.ShipCity, ShipCountry: @order.ShipCountry, ShipName: @order.ShipName, ShipPostalCode: @order.ShipPostalCode, ShipRegion: @order.ShipRegion, ShipVia: @order.ShipVia, ShippedDate: @order.ShippedDate }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
