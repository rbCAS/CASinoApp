class CreateCASinoTicketGrantingTickets < ActiveRecord::Migration
  def change
    create_table :casino_ticket_granting_tickets do |t|
      t.string  :ticket,                                                :null => false
      t.string  :user_agent
      t.integer :user_id,                                               :null => false
      t.boolean :awaiting_two_factor_authentication, :default => false, :null => false
      t.boolean :long_term,                          :default => false, :null => false

      t.timestamps
    end
    add_index :casino_ticket_granting_tickets, :ticket, :unique => true
  end
end