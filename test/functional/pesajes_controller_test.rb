require 'test_helper'

class PesajesControllerTest < ActionController::TestCase
  setup do
    @pesaje = pesajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesaje" do
    assert_difference('Pesaje.count') do
      post :create, pesaje: { ComidasConProteinas: @pesaje.ComidasConProteinas, peso: @pesaje.peso }
    end

    assert_redirected_to pesaje_path(assigns(:pesaje))
  end

  test "should show pesaje" do
    get :show, id: @pesaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesaje
    assert_response :success
  end

  test "should update pesaje" do
    put :update, id: @pesaje, pesaje: { ComidasConProteinas: @pesaje.ComidasConProteinas, peso: @pesaje.peso }
    assert_redirected_to pesaje_path(assigns(:pesaje))
  end

  test "should destroy pesaje" do
    assert_difference('Pesaje.count', -1) do
      delete :destroy, id: @pesaje
    end

    assert_redirected_to pesajes_path
  end
end
