class CreateCASinoUsers < ActiveRecord::Migration
  def change
    create_table :casino_users do |t|
      t.string  :authenticator,   :null => false
      t.string  :username,        :null => false
      t.text    :extra_attributes

      t.timestamps
    end
    add_index :casino_users, [:authenticator, :username], :unique => true
  end
end