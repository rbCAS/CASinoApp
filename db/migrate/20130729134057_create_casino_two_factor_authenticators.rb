class CreateCASinoTwoFactorAuthenticators < ActiveRecord::Migration
  def change
    create_table :casino_two_factor_authenticators do |t|
      t.integer :user_id,                    :null => false
      t.string  :secret,                     :null => false
      t.boolean :active,  :default => false, :null => false

      t.timestamps
    end
    add_index :casino_two_factor_authenticators, :user_id
  end
end