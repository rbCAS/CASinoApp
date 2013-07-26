class CreateCASinoServiceTickets < ActiveRecord::Migration
  def change
    create_table :casino_service_tickets do |t|
      t.string  :ticket,                                      :null => false
      t.string  :service,                                     :null => false
      t.integer :ticket_granting_ticket_id
      t.boolean :consumed,                 :default => false, :null => false
      t.boolean :issued_from_credentials,  :default => false, :null => false

      t.timestamps
    end
    add_index :casino_service_tickets, :ticket, :unique => true
    add_index :casino_service_tickets, :ticket_granting_ticket_id
  end
end