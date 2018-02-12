class AddColumnToMycomment < ActiveRecord::Migration[5.1]
  def change
    add_column :mycomments, :reply_id, :integer
  end
end
