require 'test_helper'

class AminasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amina = aminas(:one)
  end

  test "should get index" do
    get aminas_url
    assert_response :success
  end

  test "should get new" do
    get new_amina_url
    assert_response :success
  end

  test "should create amina" do
    assert_difference('Amina.count') do
      post aminas_url, params: { amina: { email: @amina.email } }
    end

    assert_redirected_to amina_url(Amina.last)
  end

  test "should show amina" do
    get amina_url(@amina)
    assert_response :success
  end

  test "should get edit" do
    get edit_amina_url(@amina)
    assert_response :success
  end

  test "should update amina" do
    patch amina_url(@amina), params: { amina: { email: @amina.email } }
    assert_redirected_to amina_url(@amina)
  end

  test "should destroy amina" do
    assert_difference('Amina.count', -1) do
      delete amina_url(@amina)
    end

    assert_redirected_to aminas_url
  end
end
