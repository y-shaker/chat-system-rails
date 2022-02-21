class RemoveApplicationIdFromChat < ActiveRecord::Migration[7.0]
  def change
    remove_column :chats, :application_id, :integer
  end
end
