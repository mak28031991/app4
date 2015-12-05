require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { Address: @supplier.Address, City: @supplier.City, CompanyName: @supplier.CompanyName, ContactName: @supplier.ContactName, ContactTitle: @supplier.ContactTitle, Country: @supplier.Country, Fax: @supplier.Fax, HomePage: @supplier.HomePage, Phone: @supplier.Phone, PostalCode: @supplier.PostalCode, Region: @supplier.Region }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    patch :update, id: @supplier, supplier: { Address: @supplier.Address, City: @supplier.City, CompanyName: @supplier.CompanyName, ContactName: @supplier.ContactName, ContactTitle: @supplier.ContactTitle, Country: @supplier.Country, Fax: @supplier.Fax, HomePage: @supplier.HomePage, Phone: @supplier.Phone, PostalCode: @supplier.PostalCode, Region: @supplier.Region }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
