class AddRsvpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rsvp, :string
    add_column :users, :clicked_invite, :integer, default: 0
  end
end
