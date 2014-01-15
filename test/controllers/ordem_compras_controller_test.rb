require 'test_helper'

class OrdemComprasControllerTest < ActionController::TestCase
  setup do
    @ordem_compra = ordem_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordem_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordem_compra" do
    assert_difference('OrdemCompra.count') do
      post :create, ordem_compra: { address_city: @ordem_compra.address_city, address_complement: @ordem_compra.address_complement, address_country: @ordem_compra.address_country, address_neighbourhood: @ordem_compra.address_neighbourhood, address_number: @ordem_compra.address_number, address_state: @ordem_compra.address_state, address_street: @ordem_compra.address_street, address_zipcode: @ordem_compra.address_zipcode, email: @ordem_compra.email, name: @ordem_compra.name, order_id: @ordem_compra.order_id, phone_area_code: @ordem_compra.phone_area_code, phone_number: @ordem_compra.phone_number }
    end

    assert_redirected_to ordem_compra_path(assigns(:ordem_compra))
  end

  test "should show ordem_compra" do
    get :show, id: @ordem_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordem_compra
    assert_response :success
  end

  test "should update ordem_compra" do
    patch :update, id: @ordem_compra, ordem_compra: { address_city: @ordem_compra.address_city, address_complement: @ordem_compra.address_complement, address_country: @ordem_compra.address_country, address_neighbourhood: @ordem_compra.address_neighbourhood, address_number: @ordem_compra.address_number, address_state: @ordem_compra.address_state, address_street: @ordem_compra.address_street, address_zipcode: @ordem_compra.address_zipcode, email: @ordem_compra.email, name: @ordem_compra.name, order_id: @ordem_compra.order_id, phone_area_code: @ordem_compra.phone_area_code, phone_number: @ordem_compra.phone_number }
    assert_redirected_to ordem_compra_path(assigns(:ordem_compra))
  end

  test "should destroy ordem_compra" do
    assert_difference('OrdemCompra.count', -1) do
      delete :destroy, id: @ordem_compra
    end

    assert_redirected_to ordem_compras_path
  end
end
