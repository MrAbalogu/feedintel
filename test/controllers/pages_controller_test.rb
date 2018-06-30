require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get terms" do
    get pages_terms_url
    assert_response :success
  end

  test "should get mission" do
    get pages_mission_url
    assert_response :success
  end

end
