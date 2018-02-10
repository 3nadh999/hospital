require 'test_helper'

class PatientAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_account = patient_accounts(:one)
  end

  test "should get index" do
    get patient_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_account_url
    assert_response :success
  end

  test "should create patient_account" do
    assert_difference('PatientAccount.count') do
      post patient_accounts_url, params: { patient_account: { number: @patient_account.number, patient_id: @patient_account.patient_id } }
    end

    assert_redirected_to patient_account_url(PatientAccount.last)
  end

  test "should show patient_account" do
    get patient_account_url(@patient_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_account_url(@patient_account)
    assert_response :success
  end

  test "should update patient_account" do
    patch patient_account_url(@patient_account), params: { patient_account: { number: @patient_account.number, patient_id: @patient_account.patient_id } }
    assert_redirected_to patient_account_url(@patient_account)
  end

  test "should destroy patient_account" do
    assert_difference('PatientAccount.count', -1) do
      delete patient_account_url(@patient_account)
    end

    assert_redirected_to patient_accounts_url
  end
end
