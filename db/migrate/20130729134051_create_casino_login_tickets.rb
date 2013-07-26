class CreateCASinoLoginTickets < ActiveRecord::Migration
  def change
    create_table :casino_login_tickets do |t|
      t.string :ticket, :null => false

      t.timestamps
    end
    add_index :casino_login_tickets, :ticket, :unique => true
  end
end
