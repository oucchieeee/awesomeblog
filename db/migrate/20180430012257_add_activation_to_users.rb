class AddActivationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false #0 in databasea
    add_column :users, :activated_at, :datetime
  end
end