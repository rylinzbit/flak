class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :name
      t.text :comment
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
