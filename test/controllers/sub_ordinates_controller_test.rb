require 'test_helper'

class SubOrdinatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_ordinate = sub_ordinates(:one)
  end

  test "should get index" do
    get sub_ordinates_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_ordinate_url
    assert_response :success
  end

  test "should create sub_ordinate" do
    assert_difference('SubOrdinate.count') do
      post sub_ordinates_url, params: { sub_ordinate: { manager_id: @sub_ordinate.manager_id, name: @sub_ordinate.name } }
    end

    assert_redirected_to sub_ordinate_url(SubOrdinate.last)
  end

  test "should show sub_ordinate" do
    get sub_ordinate_url(@sub_ordinate)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_ordinate_url(@sub_ordinate)
    assert_response :success
  end

  test "should update sub_ordinate" do
    patch sub_ordinate_url(@sub_ordinate), params: { sub_ordinate: { manager_id: @sub_ordinate.manager_id, name: @sub_ordinate.name } }
    assert_redirected_to sub_ordinate_url(@sub_ordinate)
  end

  test "should destroy sub_ordinate" do
    assert_difference('SubOrdinate.count', -1) do
      delete sub_ordinate_url(@sub_ordinate)
    end

    assert_redirected_to sub_ordinates_url
  end
end
