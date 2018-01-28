class CreatePhysicians < ActiveRecord::Migration[5.1]
  def change
    create_table :physicians do |t|
      t.string :name
      t.integer :age
      t.integer :experiance

      t.timestamps
    end
  end
end
