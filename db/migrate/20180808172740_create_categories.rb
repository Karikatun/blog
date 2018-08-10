class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name

      t.references :article, foreign_key: "category_id"

      t.timestamps
    end
  end
end
