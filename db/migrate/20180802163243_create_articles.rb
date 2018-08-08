class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.belongs_to :categories, index: true

      t.timestamps
    end
  end
end
