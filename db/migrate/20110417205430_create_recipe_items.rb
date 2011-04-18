class CreateRecipeItems < ActiveRecord::Migration
  def self.up
    create_table :recipe_items do |t|
      t.references :recipe
      t.references :item
      t.float :qty_needed
      t.string :qty_type

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_items
  end
end
