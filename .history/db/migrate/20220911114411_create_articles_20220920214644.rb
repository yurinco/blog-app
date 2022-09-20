class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
