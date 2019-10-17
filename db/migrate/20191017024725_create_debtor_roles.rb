class CreateDebtorRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :debtor_roles do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
