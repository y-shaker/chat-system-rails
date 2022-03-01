class AddClientId1ToChats < ActiveRecord::Migration[7.0]
  def change
    add_reference :chats, :client, foreign_key: { to_table: :clients }
  end
end
