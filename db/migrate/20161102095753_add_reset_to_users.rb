class AddResetToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :reset_digest, :string
    add_column :users, :reset_sent_at, :datetime
  end

  def down
  end
end
