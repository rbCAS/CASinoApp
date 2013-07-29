class CreateCASinoServiceRules < ActiveRecord::Migration
  def change
    create_table :casino_service_rules do |t|
      t.boolean :enabled, :default => true,  :null => false
      t.integer :order,   :default => 10,    :null => false
      t.string  :name,                       :null => false
      t.string  :url,                        :null => false
      t.boolean :regex,   :default => false, :null => false

      t.timestamps
    end
    add_index :casino_service_rules, :url, :unique => true
  end
end