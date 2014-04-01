class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.integer :itemID
      t.string :itemName
      t.string :category
      t.string :itemSize
      t.integer :supplier
      t.string :description
      t.date :purchasesDate
      t.double :purchasePrice 
      t.integer :quantityOnHand
      t.integer :reorderLimit
      t.double :salesPrice
      t.string :status

	  t.references :categories
	  t.references : suppliers
	  t.references : statuses
      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
