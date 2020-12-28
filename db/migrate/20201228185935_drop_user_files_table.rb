class DropUserFilesTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :user_files
    drop_table :open_files
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
