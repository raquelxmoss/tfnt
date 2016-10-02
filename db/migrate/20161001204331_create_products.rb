class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :price
      t.text :description

      t.timestamps null: false
    end

    create_table :user_products do |t|
      t.belongs_to :user, index: true
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
