class RemoveMailPasswordFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :mail, :string
    remove_column :users, :password, :string
  end
end
