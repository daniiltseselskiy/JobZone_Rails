class UpdateUsersColumns < ActiveRecord::Migration[5.1]

  def change
    add_column :users, :verification_code, :string
    rename_column :users, :approved, :is_verified
    add_column :users, :authentication_token, :text
    add_column :users, :authentication_token_created_at, :datetime

    add_index :users, :authentication_token, unique: true
  end
end
