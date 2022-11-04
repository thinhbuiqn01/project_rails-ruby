require "application_system_test_case"

class QlbooksTest < ApplicationSystemTestCase
  setup do
    @qlbook = qlbooks(:one)
  end

  test "visiting the index" do
    visit qlbooks_url
    assert_selector "h1", text: "Qlbooks"
  end

  test "should create qlbook" do
    visit qlbooks_url
    click_on "New qlbook"

    fill_in "Ghichu 262", with: @qlbook.ghichu_262
    fill_in "Hoten 262", with: @qlbook.hoten_262
    fill_in "Lop 262", with: @qlbook.lop_262
    fill_in "Mahs 262", with: @qlbook.mahs_262
    fill_in "Masach 262", with: @qlbook.masach_262
    fill_in "Ngaymuon 262", with: @qlbook.ngaymuon_262
    fill_in "Ngaytra 262", with: @qlbook.ngaytra_262
    fill_in "Sobm 262", with: @qlbook.soBM_262
    fill_in "Tensach 262", with: @qlbook.tensach_262
    fill_in "Tentacgia 262", with: @qlbook.tentacgia_262
    click_on "Create Qlbook"

    assert_text "Qlbook was successfully created"
    click_on "Back"
  end

  test "should update Qlbook" do
    visit qlbook_url(@qlbook)
    click_on "Edit this qlbook", match: :first

    fill_in "Ghichu 262", with: @qlbook.ghichu_262
    fill_in "Hoten 262", with: @qlbook.hoten_262
    fill_in "Lop 262", with: @qlbook.lop_262
    fill_in "Mahs 262", with: @qlbook.mahs_262
    fill_in "Masach 262", with: @qlbook.masach_262
    fill_in "Ngaymuon 262", with: @qlbook.ngaymuon_262
    fill_in "Ngaytra 262", with: @qlbook.ngaytra_262
    fill_in "Sobm 262", with: @qlbook.soBM_262
    fill_in "Tensach 262", with: @qlbook.tensach_262
    fill_in "Tentacgia 262", with: @qlbook.tentacgia_262
    click_on "Update Qlbook"

    assert_text "Qlbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Qlbook" do
    visit qlbook_url(@qlbook)
    click_on "Destroy this qlbook", match: :first

    assert_text "Qlbook was successfully destroyed"
  end
end
