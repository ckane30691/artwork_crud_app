class ChangeUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :email, :string, null: false, unique: true
    change_column :users, :name, :string, null: false, unique: true
    rename_column :users, :name, :username
  end
end
