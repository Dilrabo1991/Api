require "test_helper"

class ComicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comic = comics(:one)
  end

  test "should get index" do
    get comics_url, as: :json
    assert_response :success
  end

  test "should create comic" do
    assert_difference("Comic.count") do
      post comics_url, params: { comic: { hero: @comic.hero, heroine: @comic.heroine, name: @comic.name, title: @comic.title, villain: @comic.villain } }, as: :json
    end

    assert_response :created
  end

  test "should show comic" do
    get comic_url(@comic), as: :json
    assert_response :success
  end

  test "should update comic" do
    patch comic_url(@comic), params: { comic: { hero: @comic.hero, heroine: @comic.heroine, name: @comic.name, title: @comic.title, villain: @comic.villain } }, as: :json
    assert_response :success
  end

  test "should destroy comic" do
    assert_difference("Comic.count", -1) do
      delete comic_url(@comic), as: :json
    end

    assert_response :no_content
  end
end
