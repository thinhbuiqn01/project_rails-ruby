require "test_helper"

class QlbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qlbook = qlbooks(:one)
  end

  test "should get index" do
    get qlbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_qlbook_url
    assert_response :success
  end

  test "should create qlbook" do
    assert_difference("Qlbook.count") do
      post qlbooks_url, params: { qlbook: { ghichu_262: @qlbook.ghichu_262, hoten_262: @qlbook.hoten_262, lop_262: @qlbook.lop_262, mahs_262: @qlbook.mahs_262, masach_262: @qlbook.masach_262, ngaymuon_262: @qlbook.ngaymuon_262, ngaytra_262: @qlbook.ngaytra_262, soBM_262: @qlbook.soBM_262, tensach_262: @qlbook.tensach_262, tentacgia_262: @qlbook.tentacgia_262 } }
    end

    assert_redirected_to qlbook_url(Qlbook.last)
  end

  test "should show qlbook" do
    get qlbook_url(@qlbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_qlbook_url(@qlbook)
    assert_response :success
  end

  test "should update qlbook" do
    patch qlbook_url(@qlbook), params: { qlbook: { ghichu_262: @qlbook.ghichu_262, hoten_262: @qlbook.hoten_262, lop_262: @qlbook.lop_262, mahs_262: @qlbook.mahs_262, masach_262: @qlbook.masach_262, ngaymuon_262: @qlbook.ngaymuon_262, ngaytra_262: @qlbook.ngaytra_262, soBM_262: @qlbook.soBM_262, tensach_262: @qlbook.tensach_262, tentacgia_262: @qlbook.tentacgia_262 } }
    assert_redirected_to qlbook_url(@qlbook)
  end

  test "should destroy qlbook" do
    assert_difference("Qlbook.count", -1) do
      delete qlbook_url(@qlbook)
    end

    assert_redirected_to qlbooks_url
  end
end
