class AddColumnToChat < ActiveRecord::Migration[5.1]
  def change
    add_column :chats, :comment, :string
  end
end
