class CreateJoinTablePhysicianDepartment < ActiveRecord::Migration[5.1]
  def change
    create_join_table :physicians, :departments do |t|
      # t.index [:physician_id, :department_id]
      # t.index [:department_id, :physician_id]
    end
  end
end
