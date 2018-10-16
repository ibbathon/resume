require 'test_helper'

class ResumeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resume_new_url
    assert_response :success
  end

  test "should get create" do
    get resume_create_url
    assert_response :success
  end

  test "should get show" do
    get resume_show_url
    assert_response :success
  end

  test "should get index" do
    get resume_index_url
    assert_response :success
  end

end
