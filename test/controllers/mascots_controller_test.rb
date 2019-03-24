require 'test_helper'

class MascotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mascot = mascots(:one)
  end

  test "should get index" do
    get mascots_url, as: :json
    assert_response :success
  end

  test "should create mascot" do
    assert_difference('Mascot.count') do
      post mascots_url, params: { mascot: { age: @mascot.age, description: @mascot.description, friendly_with_cats: @mascot.friendly_with_cats, friendly_with_kids: @mascot.friendly_with_kids, friendly_with_other_dogs: @mascot.friendly_with_other_dogs, gender: @mascot.gender, location: @mascot.location, name: @mascot.name } }, as: :json
    end

    assert_response 201
  end

  test "should show mascot" do
    get mascot_url(@mascot), as: :json
    assert_response :success
  end

  test "should update mascot" do
    patch mascot_url(@mascot), params: { mascot: { age: @mascot.age, description: @mascot.description, friendly_with_cats: @mascot.friendly_with_cats, friendly_with_kids: @mascot.friendly_with_kids, friendly_with_other_dogs: @mascot.friendly_with_other_dogs, gender: @mascot.gender, location: @mascot.location, name: @mascot.name } }, as: :json
    assert_response 200
  end

  test "should destroy mascot" do
    assert_difference('Mascot.count', -1) do
      delete mascot_url(@mascot), as: :json
    end

    assert_response 204
  end
end
