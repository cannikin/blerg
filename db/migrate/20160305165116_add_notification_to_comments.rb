class AddNotificationToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :notify, :boolean, :default => false
  end
end
