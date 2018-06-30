class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string
    add_column :users, :fullname, :string
  end
end
