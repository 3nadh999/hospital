class AddColumnToPatientAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :patient_accounts, :physician_id, :string
  end
end
