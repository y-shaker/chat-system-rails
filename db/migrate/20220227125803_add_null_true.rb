class AddNullTrue < ActiveRecord::Migration[7.0]
  def change
    change_column_null :chats, :client_id, false
    change_column_null :chats, :client_2_id, false
  end
end
