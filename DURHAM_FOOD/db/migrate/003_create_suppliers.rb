class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.integer :supplierID
      t.string :supplierName
      t.string :address
      t.string :email
      t.string :phone
      t.string :fax
      t.string :website

      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
