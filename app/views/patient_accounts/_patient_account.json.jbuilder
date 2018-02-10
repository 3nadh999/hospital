json.extract! patient_account, :id, :number, :patient_id, :created_at, :updated_at
json.url patient_account_url(patient_account, format: :json)
