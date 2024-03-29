class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :email
      t.references :category, index: true

      t.timestamps
    end
  end
end
