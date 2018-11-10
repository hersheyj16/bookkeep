require "application_system_test_case"

class BookmarksTest < ApplicationSystemTestCase
  setup do
    @bookmark = bookmarks(:one)
  end

  test "visiting the index" do
    visit bookmarks_url
    assert_selector "h1", text: "Bookmarks"
  end

  test "creating a Bookmark" do
    visit bookmarks_url
    click_on "New Bookmark"

    fill_in "Book", with: @bookmark.book_id
    fill_in "Entry Date", with: @bookmark.entry_date
    fill_in "Note", with: @bookmark.note
    fill_in "Page", with: @bookmark.page
    fill_in "Progess", with: @bookmark.progess
    click_on "Create Bookmark"

    assert_text "Bookmark was successfully created"
    click_on "Back"
  end

  test "updating a Bookmark" do
    visit bookmarks_url
    click_on "Edit", match: :first

    fill_in "Book", with: @bookmark.book_id
    fill_in "Entry Date", with: @bookmark.entry_date
    fill_in "Note", with: @bookmark.note
    fill_in "Page", with: @bookmark.page
    fill_in "Progess", with: @bookmark.progess
    click_on "Update Bookmark"

    assert_text "Bookmark was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookmark" do
    visit bookmarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookmark was successfully destroyed"
  end
end
