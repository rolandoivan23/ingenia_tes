class CreateProductDiscountPackages < ActiveRecord::Migration[6.1]
  def change
    create_table :product_discount_packages do |t|
      t.string :name
      t.text :description
      t.float :discount_percentage

      t.timestamps
    end
  end
end
