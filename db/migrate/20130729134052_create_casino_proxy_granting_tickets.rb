class CreateCASinoProxyGrantingTickets < ActiveRecord::Migration
  def change
    create_table :casino_proxy_granting_tickets do |t|
      t.string  :ticket,       :null => false
      t.string  :iou,          :null => false
      t.integer :granter_id,   :null => false
      t.string  :pgt_url,      :null => false
      t.string  :granter_type, :null => false

      t.timestamps
    end
    add_index :casino_proxy_granting_tickets, :ticket, :unique => true
    add_index :casino_proxy_granting_tickets, :iou, :unique => true
    add_index :casino_proxy_granting_tickets, [:granter_type, :granter_id], :name => "index_casino_proxy_granting_tickets_on_granter", :unique => true
  end
end
