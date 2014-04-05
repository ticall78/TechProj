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
      t.decimal :purchasePrice, :precision=> 4, :scale => 2
      t.integer :quantityOnHand, :precision=> 3
      t.integer :reorderLimit, :limit=> 99
      t.decimal :salesPrice, :precision=> 4, :scale => 2
      t.string :status

	  t.references :category
	  t.references :supplier
	  t.references :status
      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
