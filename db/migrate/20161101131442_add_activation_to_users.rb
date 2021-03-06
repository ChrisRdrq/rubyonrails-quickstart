class AddActivationToUsers < ActiveRecord::Migration[5.0]

  def up
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
  end

  def down
  end

end
