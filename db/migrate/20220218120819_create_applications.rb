class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :token
      t.string :name

      t.timestamps
    end
    add_index :applications, :token, unique: true
  end
end
