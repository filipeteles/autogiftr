class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
