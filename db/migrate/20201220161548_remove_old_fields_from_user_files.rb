class RemoveOldFieldsFromUserFiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_files, :id_file
    remove_column :user_files, :location
    remove_column :user_files, :name
    remove_column :user_files, :directory?
  end
end
