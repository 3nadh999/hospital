class AddColumnToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :person_id, :integer
    add_column :comments, :person_type, :string
  end
end
