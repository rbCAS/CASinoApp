# This migration comes from casino (originally 20160606230101)
class AddDeletedAtToTicketGrantingTicket < ActiveRecord::Migration
  def change
    add_column :casino_ticket_granting_tickets, :deleted_at, :datetime
    add_index :casino_ticket_granting_tickets, :deleted_at
  end
end
