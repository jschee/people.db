class RemoveAvatarFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :avatar
  end
end
