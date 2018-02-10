class AddColumnsToPicture < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :imageable_id, :integer
    add_column :pictures, :imageable_type, :string
  end
end
