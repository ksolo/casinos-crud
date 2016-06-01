class CreateCasinos < ActiveRecord::Migration
  def change
    create_table :casinos do |t|
      t.string  :name,           null: false
      t.string  :street_address, null: false
      t.string  :city,           null: false
      t.string  :state,          null: false
      t.string  :zip,            null: false
      t.boolean :smoking,        null: false,    default: false
      t.integer :poker_tables,   null: false,    default: 0
      t.timestamps(null: false)
    end
  end
end
