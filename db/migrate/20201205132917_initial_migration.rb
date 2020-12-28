class InitialMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :id_user
      t.string :login
      t.integer :admission
      t.timestamps
    end

  end
end
