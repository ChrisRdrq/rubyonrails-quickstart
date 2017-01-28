class AddRememberDigestToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :remember_digest, :string
  end

  def down
  end
end
