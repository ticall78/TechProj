class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :dairy
      t.string :vegetables
      t.string :fruits
      t.string :meat
      t.string :others

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
