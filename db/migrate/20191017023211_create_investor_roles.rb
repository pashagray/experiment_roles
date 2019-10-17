class CreateInvestorRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :investor_roles do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
