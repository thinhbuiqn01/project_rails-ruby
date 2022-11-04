require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { ghich_262: @book.ghich_262, hoten_262: @book.hoten_262, lop: @book.lop, mahs_262: @book.mahs_262, masach_262: @book.masach_262, ngaymuon_262: @book.ngaymuon_262, ngaytra_262: @book.ngaytra_262, soBM_262: @book.soBM_262, tensach_262: @book.tensach_262, tentacgia_262: @book.tentacgia_262 } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { ghich_262: @book.ghich_262, hoten_262: @book.hoten_262, lop: @book.lop, mahs_262: @book.mahs_262, masach_262: @book.masach_262, ngaymuon_262: @book.ngaymuon_262, ngaytra_262: @book.ngaytra_262, soBM_262: @book.soBM_262, tensach_262: @book.tensach_262, tentacgia_262: @book.tentacgia_262 } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
