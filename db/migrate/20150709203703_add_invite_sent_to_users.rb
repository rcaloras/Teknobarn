class AddInviteSentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :invite_sent, :boolean
  end
end
