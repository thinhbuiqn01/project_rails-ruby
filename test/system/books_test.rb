require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ghich 262", with: @book.ghich_262
    fill_in "Hoten 262", with: @book.hoten_262
    fill_in "Lop", with: @book.lop
    fill_in "Mahs 262", with: @book.mahs_262
    fill_in "Masach 262", with: @book.masach_262
    fill_in "Ngaymuon 262", with: @book.ngaymuon_262
    fill_in "Ngaytra 262", with: @book.ngaytra_262
    fill_in "Sobm 262", with: @book.soBM_262
    fill_in "Tensach 262", with: @book.tensach_262
    fill_in "Tentacgia 262", with: @book.tentacgia_262
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ghich 262", with: @book.ghich_262
    fill_in "Hoten 262", with: @book.hoten_262
    fill_in "Lop", with: @book.lop
    fill_in "Mahs 262", with: @book.mahs_262
    fill_in "Masach 262", with: @book.masach_262
    fill_in "Ngaymuon 262", with: @book.ngaymuon_262
    fill_in "Ngaytra 262", with: @book.ngaytra_262
    fill_in "Sobm 262", with: @book.soBM_262
    fill_in "Tensach 262", with: @book.tensach_262
    fill_in "Tentacgia 262", with: @book.tentacgia_262
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
