require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get no--test-framework" do
    get students_no--test-framework_url
    assert_response :success
  end
end
