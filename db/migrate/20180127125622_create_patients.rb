class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :email
      t.string :gender

      t.timestamps
    end
  end
end