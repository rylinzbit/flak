class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content
      t.string :name
      t.string :projects
      t.integer :likes

      t.timestamps null: false
    end
  end
end
