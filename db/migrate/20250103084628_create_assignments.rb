class CreateAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :assignments do |t|
      t.references :users, null: true, foreign_key: { on_delete: :nullify }
      t.references :user_roles, null: true, foreign_key: { on_delete: :nullify }

      t.timestamps
    end
  end
end
