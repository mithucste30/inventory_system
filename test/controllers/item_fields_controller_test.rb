require 'test_helper'

class ItemFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_field = item_fields(:one)
  end

  test "should get index" do
    get item_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_item_field_url
    assert_response :success
  end

  test "should create item_field" do
    assert_difference('ItemField.count') do
      post item_fields_url, params: { item_field: { input_title: @item_field.input_title, input_type: @item_field.input_type, input_values: @item_field.input_values, required: @item_field.required } }
    end

    assert_redirected_to item_field_url(ItemField.last)
  end

  test "should show item_field" do
    get item_field_url(@item_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_field_url(@item_field)
    assert_response :success
  end

  test "should update item_field" do
    patch item_field_url(@item_field), params: { item_field: { input_title: @item_field.input_title, input_type: @item_field.input_type, input_values: @item_field.input_values, required: @item_field.required } }
    assert_redirected_to item_field_url(@item_field)
  end

  test "should destroy item_field" do
    assert_difference('ItemField.count', -1) do
      delete item_field_url(@item_field)
    end

    assert_redirected_to item_fields_url
  end
end
