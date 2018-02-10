class CreatePatientAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_accounts do |t|
      t.string :number
      t.string :patient_id

      t.timestamps
    end
  end
end
