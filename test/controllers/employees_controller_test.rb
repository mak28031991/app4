require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { Address: @employee.Address, BirthDate: @employee.BirthDate, City: @employee.City, Country: @employee.Country, Extension: @employee.Extension, FirstName: @employee.FirstName, HireDate: @employee.HireDate, HomePhone: @employee.HomePhone, LastName: @employee.LastName, Notes: @employee.Notes, Photo: @employee.Photo, PhotoPath: @employee.PhotoPath, PostalCode: @employee.PostalCode, Region: @employee.Region, ReportsTo: @employee.ReportsTo, Title: @employee.Title, TitleOfCourtesy: @employee.TitleOfCourtesy }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { Address: @employee.Address, BirthDate: @employee.BirthDate, City: @employee.City, Country: @employee.Country, Extension: @employee.Extension, FirstName: @employee.FirstName, HireDate: @employee.HireDate, HomePhone: @employee.HomePhone, LastName: @employee.LastName, Notes: @employee.Notes, Photo: @employee.Photo, PhotoPath: @employee.PhotoPath, PostalCode: @employee.PostalCode, Region: @employee.Region, ReportsTo: @employee.ReportsTo, Title: @employee.Title, TitleOfCourtesy: @employee.TitleOfCourtesy }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
