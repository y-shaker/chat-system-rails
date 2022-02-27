class AddNotNullToColumns < ActiveRecord::Migration[7.0]
  def change
    change_column_null :applications, :token, false
   


  end
end
