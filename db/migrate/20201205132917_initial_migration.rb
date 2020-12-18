class InitialMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :id_user
      t.string :login
      t.integer :admission
      t.timestamps
    end

    create_table :user_files do |t|
      t.integer :id_user
      t.integer :id_file
      t.string :name
      t.string :location
      t.boolean :directory?
      t.timestamps
    end

    create_table :open_files do |t|
      t.integer :id_user
      t.integer :id_file
      t.string :link
      t.string :password_file
      t.timestamps
    end
  end
end
